#Use with RPi
#By Ayush and Steven

from lib_nrf24 import NRF24
import time
import spidev
import pigpio
import logging
radio_soft_reset = False

MAX_PKG_SIZE = 6

pi = pigpio.pi()

logging.basicConfig(filename='timeout_test.log', encoding='utf-8', level=logging.DEBUG)
localtime = time.asctime( time.localtime(time.time()) )
logging.debug('%s: Starting program', localtime)
while True:
	error_count = 0
	pipes = [[0xE8, 0xE8, 0xF0, 0xF0, 0xE1], [0xF0, 0xF0, 0xF0, 0xF0, 0xE1]]
	
	radio = NRF24(pi, spidev.SpiDev())
	radio.begin(0, 17)
	
	
	radio.setPayloadSize(MAX_PKG_SIZE)
	radio.setChannel(0x76)
	radio.setDataRate(NRF24.BR_1MBPS)
	radio.setPALevel(NRF24.PA_MIN)
	
	radio.setAutoAck(True)
	radio.enableDynamicPayloads()
	radio.enableAckPayload()
	
	radio.openWritingPipe(pipes[0])
	radio.openReadingPipe(1, pipes[1])
	radio.printDetails()
	#radio.startListening()
	
	message = list("1423")
	while len(message) < MAX_PKG_SIZE:
		message.append(0)
	
	while True:
		start = time.time()
		radio.write(message)
		print("Sent the message: {}".format(message))
		radio.startListening()
		
		while not radio.available(0):
			time.sleep(1/100)
			if time.time() - start > 2:
				print("Timed out.")
				error_count += 1
				if error_count > 2:
					radio_soft_reset = True
				break
		if radio_soft_reset:
			radio_soft_reset = False
			localtime = time.asctime( time.localtime(time.time()) )
			logging.debug('%s: Performing soft reset', localtime)
			break
			
		receivedMessage = []
		radio.read(receivedMessage, radio.getDynamicPayloadSize())
		print("Received: {}".format(receivedMessage))
	
		#print("Translating our received Message into unicode characters...")
		#string = ""
	
		#for n in receivedMessage:
		#	if (n >= 32 and n <= 126):
		#		string += chr(n)
		#print("Our received message decodes to: {}".format(string))
	
		radio.stopListening()
		time.sleep(0.1)
	
	radio.end()