# NRF24L01 Radio Communication Test
###### Steven and Ayush

The library RF24 by TMRh20 is used for the ESP8266/Arduino board. Install via the Arduino IDE.

The library lib_nrf24 by BLavery is used for the RPi radio communication. See https://github.com/BLavery/lib_nrf24
However library has been modifed to work with the pigpio library.

## Two-Way Communication Test
On the RPi, run the the following command:
```
sudo python3 sendRecieveESP.py
```

On the ESP8266 Node-MCU board, make sure to flash the `sendRecievePi.ino` code onto the board.
