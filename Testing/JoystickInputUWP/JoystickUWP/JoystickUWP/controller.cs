//Author: Steven Feng
//September 30th, 2020

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.Gaming.Input;
namespace JoystickUWP
{
    class controller
    {
        private readonly object myLock = new object();
        public List<Gamepad> myGamepads = new List<Gamepad>();
        private Gamepad mainGamepad;

        //joystick variables
        public double leftStickX = 0;   
        public double leftStickY = 0;   
        public double rightStickX = 0; 
        public double rightStickY = 0;
        private double leftStickXTemp = 0;
        private double leftStickYTemp = 0;
        private double rightStickXTemp = 0;
        private double rightStickYTemp = 0;


        public float leftStickMag = 0;
        public float rightStickMag = 0;
        const float deadzoneRadius = 0.1f; //need to double check and tune
        const float deadzoneSquared = deadzoneRadius * deadzoneRadius;

        //trigger variables
        public double leftTrigger = 0;
        public double rightTrigger = 0;

        //button variables
        public bool buttonA = false;//handled
        public bool buttonB = false;//handled
        public bool buttonX = false;//handled
        public bool buttonY = false;//handled
        public bool buttonUp = false;//handled
        public bool buttonDown = false;//handled
        public bool buttonLeft = false;//handled
        public bool buttonRight = false;//handled
        public bool buttonLB = false;//handled
        public bool buttonRB = false;//handled
        public bool buttonView = false;//handled
        public bool buttonMenu = false;//handled

        //find available controllers, and append to myGamepads list
        public void GetGamepads()
        {
            lock (myLock)
            {
                foreach (var gamepad in Gamepad.Gamepads)
                {
                    // Check if the gamepad is already in myGamepads; if it isn't, add it.
                    bool gamepadInList = myGamepads.Contains(gamepad);

                    if (!gamepadInList)
                    {
                        // This code assumes that you're interested in all gamepads.
                        myGamepads.Add(gamepad);
                    }
                }
            }
        }

        //adding additional controller (probably not needed)
        private void addGamepads()
        {
            Gamepad.GamepadAdded += (object sender, Gamepad e) =>
            {
                // Check if the just-added gamepad is already in myGamepads; if it isn't, add
                // it.
                lock (myLock)
                {
                    bool gamepadInList = myGamepads.Contains(e);

                    if (!gamepadInList)
                    {
                        myGamepads.Add(e);
                    }
                }
            };
        }

        //removing additional controller (probably not needed)
        private void removeGamepads()
        {
            Gamepad.GamepadRemoved += (object sender, Gamepad e) =>
            {
                lock (myLock)
                {
                    int indexRemoved = myGamepads.IndexOf(e);

                    if (indexRemoved > -1)
                    {
                        if (mainGamepad == myGamepads[indexRemoved])
                        {
                            mainGamepad = null;
                        }

                        myGamepads.RemoveAt(indexRemoved);
                    }
                }
            };
        }

        //read from gamepad, and change public variables
        public void getReading()
        {
            Gamepad gamepad = myGamepads[0]; //first item
            GamepadReading reading = gamepad.GetCurrentReading();


            //read from joystick
            joytickRead(reading);
            //read from trigger
            buttonRead(reading);

            //read from buttons

        }

        //updates the reading from 
        public void joytickRead(GamepadReading reading)
        {

            //read from joystick
            leftStickXTemp = reading.LeftThumbstickX;   // returns a value between -1.0 and +1.0
            leftStickYTemp = reading.LeftThumbstickY;   // returns a value between -1.0 and +1.0
            rightStickXTemp = reading.RightThumbstickX; // returns a value between -1.0 and +1.0
            rightStickYTemp = reading.RightThumbstickY; // returns a value between -1.0 and +1.0
            leftStickMag = (float)(leftStickXTemp * leftStickXTemp + leftStickYTemp * leftStickYTemp);
            rightStickMag = (float)(rightStickXTemp * rightStickXTemp + rightStickYTemp + rightStickYTemp);
            if (leftStickMag > deadzoneSquared)
            {
                //valid input from left stick
                leftStickX = leftStickXTemp;
                leftStickY = leftStickYTemp;
            }

            if (rightStickMag > deadzoneSquared)
            {
                //valid input from right stick
                rightStickX = rightStickXTemp;
                rightStickY = rightStickYTemp;
            }
        }

        public void triggerRead(GamepadReading reading)
        {
            leftTrigger = reading.LeftTrigger;
            rightTrigger = reading.RightTrigger;

            //TODO: Someway to make one retain value and the other one 0
        }

        public void buttonRead(GamepadReading reading)
        {
            if (GamepadButtons.A == (reading.Buttons & GamepadButtons.A))
            {
                // button A is pressed
                buttonA = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.A))
            {
                // button A is released
                buttonA = false;
            }

            if (GamepadButtons.B == (reading.Buttons & GamepadButtons.B))
            {
                // button B is pressed
                buttonA = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.B))
            {
                // button B is released
                buttonB = false;
            }

            if (GamepadButtons.LeftShoulder == (reading.Buttons & GamepadButtons.LeftShoulder))
            {
                // button LB is pressed
                buttonLB = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.LeftShoulder))
            {
                // button LB is released
                buttonLB = false;
            }
            
            if (GamepadButtons.RightShoulder == (reading.Buttons & GamepadButtons.RightShoulder))
            {
                // button LB is pressed
                buttonRB = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.RightShoulder))
            {
                // button LB is released
                buttonRB = false;
            }

            if (GamepadButtons.X == (reading.Buttons & GamepadButtons.X))
            {
                // button X is pressed
                buttonX = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.X))
            {
                // button X is released
                buttonX = false;
            }

            if (GamepadButtons.Y == (reading.Buttons & GamepadButtons.Y))
            {
                // button Y is pressed
                buttonY = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.Y))
            {
                // button Y is released
                buttonY = false;
            }

            if (GamepadButtons.View == (reading.Buttons & GamepadButtons.View))
            {
                // button View is pressed
                buttonView = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.View))
            {
                // button View is released
                buttonView = false;
            }

            if (GamepadButtons.Menu == (reading.Buttons & GamepadButtons.Menu))
            {
                // button Menu is pressed
                buttonMenu = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.Menu))
            {
                // button Menu is released
                buttonMenu = false;
            }
            if (GamepadButtons.DPadUp == (reading.Buttons & GamepadButtons.DPadUp))
            {
                // button Up is pressed
                buttonUp = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.DPadUp))
            {
                // button Up is released
                buttonUp = false;
            }

            if (GamepadButtons.DPadDown == (reading.Buttons & GamepadButtons.DPadDown))
            {
                // button Down is pressed
                buttonDown = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.DPadDown))
            {
                // button Down is released
                buttonDown = false;
            }

            if (GamepadButtons.DPadLeft == (reading.Buttons & GamepadButtons.DPadLeft))
            {
                // button Left is pressed
                buttonLeft = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.DPadLeft))
            {
                // button Left is released
                buttonLeft = false;
            }
            if (GamepadButtons.DPadRight == (reading.Buttons & GamepadButtons.DPadRight))
            {
                // button Right is pressed
                buttonRight = true;
            }
            else if (GamepadButtons.None == (reading.Buttons & GamepadButtons.DPadRight))
            {
                // button Right is released
                buttonRight = false;
            }
        }
        //vibrates! input left, and right vibration motor magnitude
        //value for vibration is between 0 to 1, 
        public void vibrate(float leftMotor, float rightMotor, bool doVibrate)
        {
            GamepadVibration vibration = new GamepadVibration();
            if (doVibrate)
            {
                vibration.LeftMotor = leftMotor;
                vibration.RightMotor = rightMotor;
            }
            else
            {
                vibration.LeftMotor = 0;
                vibration.RightMotor = 0;
            }
            myGamepads[0].Vibration = vibration;
        }

        //vibrate trigger!
        public void impulseTriggers(float leftTrigger, float rightTrigger, bool doVibrate)
        {
            GamepadVibration vibration = new GamepadVibration();
            if (doVibrate)
            {
                vibration.LeftTrigger = leftTrigger;
                vibration.RightTrigger = rightTrigger;
            }
            else
            {
                vibration.LeftTrigger = 0;
                vibration.RightTrigger = 0;
            }
            myGamepads[0].Vibration = vibration;
        }

    }

}
