# NRF24L01 Radio Communication Test
###### Ayush Ghosh (Oct 13, 2020)

The library RF24 by TMRh20 is used for the ESP8266/Arduino board. Install via the Arduino IDE.

The library lib_nrf24 by BLavery is used for the RPi radio communication. See https://github.com/BLavery/lib_nrf24

## One-Way Communication Test
On the RPi, run the following command:
```
sudo python3 recieveESP.py
```

On the ESP8266 Node-MCU board, make sure to flash the `sendPi.ino` code onto the board.

## Two-Way Communication Test
On the RPi, run the the following command:
```
sudo python3 sendRecieveESP.py
```

On the ESP8266 Node-MCU board, make sure to flash the `sendRecievePi.ino` code onto the board.
