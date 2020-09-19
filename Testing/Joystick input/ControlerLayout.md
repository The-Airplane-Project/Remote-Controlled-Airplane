# XBOX Input Documentation by Steven, 09/19/2020
All inputs tested on xbox one s controller, using raspberry PI 3B+

## Analog
Left joystick Y axis: ABS_Y -32768 (up pos), 32767 (down pos) 850 - 2350 (neutral)
Left joystick X axis: ABS_X -32768 (left pos), 32767 (right pos)2000 - 3000 (neutral)

Left joystick Y axis: ABS_RY -32768 (up pos), 32767 (down pos) 600 - 1140 (neutral)
Left joystick X axis: ABS_RX -32768 (left pos), 32767 (right pos) 600- 1450 (neutral)

Left Shift (LT): ABS_Z 1023 (down pos), 0 (up pos)
Right Shift (RT): ABS_RZ 1023 (down pos), 0 (up pos)

## Digital, pressed (1), unpressed (0)
BTN_TL - left base button (LB)
BTN_TR - right base button (RB)
BTN_NORTH - x button
BTN_WEST - y button
BTN_EAST - b button
BTN_SOUTH - a button
ABS_HAT0X (spelled with zero) - DPAD left (-1) DPAD right (1), not pressed (0)
ABS_HAT0Y (spelled with zero) - DPAD up (-1) DPAD down (1), not pressed (0)
BTN_SELECT - screen selection button
BTN_START - list button
