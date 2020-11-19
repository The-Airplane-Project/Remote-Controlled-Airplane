
#include "ros/ros.h"
#include <cmath>
#include "std_msgs/String.h"
#include "geometry_msgs/PoseStamped.h"
#include "visualization_msgs/Marker.h"

 double to_rad(int angle){
   return angle*M_PI/180;
 }

void format_pose(geometry_msgs::PoseStamped &orientation, int yaw, int pitch, int roll) {

   // Assuming the angles are in radians.
   double c1 = cos(to_rad(pitch)/2);
   double s1 = sin(to_rad(pitch)/2);
   double c2 = cos(to_rad(yaw)/2);
   double s2 = sin(to_rad(yaw)/2);
   double c3 = cos(to_rad(roll)/2);
   double s3 = sin(to_rad(roll)/2);
   double c1c2 = c1*c2;
   double s1s2 = s1*s2;
   //w =c1c2*c3 - s1s2*s3;
   //x  =c1c2*s3 + s1s2*c3;
   //y =s1*c2*c3 + c1*s2*s3;
   //z =c1*s2*c3 - s1*c2*s3;
 orientation.pose.position.x = 0.0;
 orientation.pose.position.y = 0.0;
 orientation.pose.position.z = 0.0;
 orientation.pose.orientation.x = c1c2*s3 + s1s2*c3;
 orientation.pose.orientation.y = s1*c2*c3 + c1*s2*s3;
 orientation.pose.orientation.z = c1*s2*c3 - s1*c2*s3;
 orientation.pose.orientation.w = c1c2*c3 - s1s2*s3;
 }


int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<geometry_msgs::PoseStamped>("plane_orientation", 1000);
  ros::Publisher vis_pub = n.advertise<visualization_msgs::Marker>( "visualization_marker", 0 );

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    visualization_msgs::Marker marker;

    geometry_msgs::PoseStamped orientation;
    orientation.header.frame_id = "airplane_base";
    orientation.pose.position.x = 0.0;
    orientation.pose.position.y = 0.0;
    orientation.pose.position.z = 0.0;
    orientation.pose.orientation.x = 0.0;
    orientation.pose.orientation.y = 0.0;
    orientation.pose.orientation.z = 0.0;
    orientation.pose.orientation.w = 1.0;
    static int pitch=0;
    static int roll=0;
    static int yaw= 0;

    format_pose(orientation, yaw , pitch, roll);

    marker.header.frame_id = "airplane_base";
    marker.header.stamp = ros::Time();
    marker.ns = "my_namespace";
    marker.id = 0;
    marker.type = visualization_msgs::Marker::MESH_RESOURCE;
    marker.action = visualization_msgs::Marker::ADD;
    marker.pose.position.x = 1;
    marker.pose.position.y = 1;
    marker.pose.position.z = 1;
    marker.pose.orientation.x = orientation.pose.orientation.x;
    marker.pose.orientation.y = orientation.pose.orientation.y;
    marker.pose.orientation.z = orientation.pose.orientation.z;
    marker.pose.orientation.w = orientation.pose.orientation.w;
    marker.scale.x = 1;
    marker.scale.y = 1;
    marker.scale.z = 1;
    marker.color.a = 1.0; // Don't forget to set the alpha!
    marker.color.r = 1.0;//170.0/255;
    marker.color.g = 0;//5.0/255;
    marker.color.b = 0;//5.0/0;
    //only if using a MESH_RESOURCE marker type:
    marker.mesh_resource = "package://ros_gui_plane/meshes/plane/Airplane_NEW2.stl";
    //marker.mesh_use_embedded_materials = true;
    vis_pub.publish( marker );

    ROS_INFO("Publishing orientation, %d, %d, %d", roll, pitch, yaw);

    chatter_pub.publish(orientation);

    ros::spinOnce();

    loop_rate.sleep();
    static bool positive = true;

    if (positive){
      roll+=5;
      yaw+=1;
      pitch+=1;
      if (roll > 30){
          positive = false;
      }
    }else{
      roll-=5;
      pitch-=1;
      yaw-=1;
      if (roll < -30){
          positive = true;
      }
    }
    //yaw+=10;
    //roll+=10;
    //pitch+=10;
  }


  return 0;
}
