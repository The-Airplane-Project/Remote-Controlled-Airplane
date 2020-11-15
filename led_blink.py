import os
import time
import logging
os.system('echo gpio | sudo tee /sys/class/leds/led0/trigger')

filename_time = time.strftime("%Y%m%d-%H_%M_%S")
log_filename = "/home/pi/Remote-Controlled-Airplane/logs/" + filename_time + ".log"
os.makedirs(os.path.dirname(log_filename), exist_ok=True)
logging.basicConfig(filename=log_filename, filemode='a', level=logging.DEBUG)

localtime = time.asctime( time.localtime(time.time()) )
logging.debug('%s: Starting the porgram', localtime)

for j in range(5):
  os.system('echo 1 | sudo tee /sys/class/leds/led0/brightness') # led on
  localtime = time.asctime( time.localtime(time.time()) )
  logging.debug('%s: Turn on LED', localtime)
  
  time.sleep(1)

  os.system('echo 0 | sudo tee /sys/class/leds/led0/brightness') # led ooff
  localtime = time.asctime( time.localtime(time.time()) )
  logging.debug('%s: Turn off LED', localtime)
  
  time.sleep(1)
localtime = time.asctime( time.localtime(time.time()) )
logging.debug('%s: Stoppping program', localtime)
