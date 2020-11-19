# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(rosflight_sim_CONFIG_INCLUDED)
  return()
endif()
set(rosflight_sim_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(rosflight_sim_SOURCE_PREFIX /home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/src/rosflight/rosflight_sim)
  set(rosflight_sim_DEVEL_PREFIX /home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/devel/.private/rosflight_sim)
  set(rosflight_sim_INSTALL_PREFIX "")
  set(rosflight_sim_PREFIX ${rosflight_sim_DEVEL_PREFIX})
else()
  set(rosflight_sim_SOURCE_PREFIX "")
  set(rosflight_sim_DEVEL_PREFIX "")
  set(rosflight_sim_INSTALL_PREFIX /home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/install)
  set(rosflight_sim_PREFIX ${rosflight_sim_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'rosflight_sim' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(rosflight_sim_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/src/rosflight/rosflight_sim/include;/usr/include/eigen3;/usr/include;/usr/include/gazebo-9;/usr/include/bullet;/usr/include/simbody;/usr/include/sdformat-6.0;/usr/include/ignition/math4;/usr/include/OGRE;/usr/include/OGRE/Terrain;/usr/include/OGRE/Paging;/usr/include/ignition/transport4;/usr/include/ignition/msgs1;/usr/include/ignition/common1;/usr/include/ignition/fuel_tools1 " STREQUAL " ")
  set(rosflight_sim_INCLUDE_DIRS "")
  set(_include_dirs "/home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/src/rosflight/rosflight_sim/include;/usr/include/eigen3;/usr/include;/usr/include/gazebo-9;/usr/include/bullet;/usr/include/simbody;/usr/include/sdformat-6.0;/usr/include/ignition/math4;/usr/include/OGRE;/usr/include/OGRE/Terrain;/usr/include/OGRE/Paging;/usr/include/ignition/transport4;/usr/include/ignition/msgs1;/usr/include/ignition/common1;/usr/include/ignition/fuel_tools1")
  if(NOT "https://github.com/rosflight/rosflight/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/rosflight/rosflight/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://rosflight.org " STREQUAL " ")
    set(_report "Check the website 'http://rosflight.org' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'James Jackson <superjax08@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${rosflight_sim_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'rosflight_sim' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'rosflight_sim' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/src/rosflight/rosflight_sim/${idir}'.  ${_report}")
    endif()
    _list_append_unique(rosflight_sim_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "BulletSoftBody;BulletDynamics;BulletCollision;LinearMath;/usr/lib/x86_64-linux-gnu/libSimTKsimbody.so;/usr/lib/x86_64-linux-gnu/libSimTKmath.so;/usr/lib/x86_64-linux-gnu/libSimTKcommon.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m;/usr/lib/x86_64-linux-gnu/libgazebo.so;/usr/lib/x86_64-linux-gnu/libgazebo_client.so;/usr/lib/x86_64-linux-gnu/libgazebo_gui.so;/usr/lib/x86_64-linux-gnu/libgazebo_sensors.so;/usr/lib/x86_64-linux-gnu/libgazebo_rendering.so;/usr/lib/x86_64-linux-gnu/libgazebo_physics.so;/usr/lib/x86_64-linux-gnu/libgazebo_ode.so;/usr/lib/x86_64-linux-gnu/libgazebo_transport.so;/usr/lib/x86_64-linux-gnu/libgazebo_msgs.so;/usr/lib/x86_64-linux-gnu/libgazebo_util.so;/usr/lib/x86_64-linux-gnu/libgazebo_common.so;/usr/lib/x86_64-linux-gnu/libgazebo_gimpact.so;/usr/lib/x86_64-linux-gnu/libgazebo_opcode.so;/usr/lib/x86_64-linux-gnu/libgazebo_opende_ou.so;/usr/lib/x86_64-linux-gnu/libboost_signals.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libprotobuf.so;-lpthread;/usr/lib/x86_64-linux-gnu/libsdformat.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreMain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreMain.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libpthread.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;optimized;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;debug;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;/usr/lib/x86_64-linux-gnu/libignition-math4.so.4.0.0;/usr/lib/x86_64-linux-gnu/libignition-transport4.so.4.0.0;/usr/lib/x86_64-linux-gnu/libignition-msgs1.so.1.0.0;/usr/lib/x86_64-linux-gnu/libignition-common1.so.1.0.1;/usr/lib/x86_64-linux-gnu/libignition-fuel_tools1.so.1.0.0")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND rosflight_sim_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND rosflight_sim_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT rosflight_sim_NUM_DUMMY_TARGETS)
      set(rosflight_sim_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::rosflight_sim::wrapped-linker-option${rosflight_sim_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR rosflight_sim_NUM_DUMMY_TARGETS "${rosflight_sim_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::rosflight_sim::wrapped-linker-option${rosflight_sim_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND rosflight_sim_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND rosflight_sim_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND rosflight_sim_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/devel/.private/rosflight_sim/lib;/home/aghosh/Remote-Controlled-Airplane/ROS_simulation_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(rosflight_sim_LIBRARY_DIRS ${lib_path})
      list(APPEND rosflight_sim_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'rosflight_sim'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND rosflight_sim_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(rosflight_sim_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${rosflight_sim_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "roscpp;gazebo_plugins;gazebo_ros;geometry_msgs;rosflight_firmware;rosflight_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 rosflight_sim_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${rosflight_sim_dep}_FOUND)
      find_package(${rosflight_sim_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${rosflight_sim_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(rosflight_sim_INCLUDE_DIRS ${${rosflight_sim_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(rosflight_sim_LIBRARIES ${rosflight_sim_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${rosflight_sim_dep}_LIBRARIES})
  _list_append_deduplicate(rosflight_sim_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(rosflight_sim_LIBRARIES ${rosflight_sim_LIBRARIES})

  _list_append_unique(rosflight_sim_LIBRARY_DIRS ${${rosflight_sim_dep}_LIBRARY_DIRS})
  list(APPEND rosflight_sim_EXPORTED_TARGETS ${${rosflight_sim_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${rosflight_sim_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
