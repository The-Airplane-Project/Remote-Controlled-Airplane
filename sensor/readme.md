## Documentation Sensors

### IMU

I2C Address 0x68


Note: Ay drifts alot, need to implement AHRS algorithm, and convert readings to human readable readings (heading, yaw, row, pitch angles)

### Barometer

I2C Address 0x77

These two sensor share a board, need to figure out a way to securely attach them to RPI

Run setup.py in the bmp folder to install library
