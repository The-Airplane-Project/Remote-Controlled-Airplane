import time
class Servo:
    def __init__(self):
        self.logging = False
    def main(self):
        while True:
            if self.logging:
                print("Logging now", flush=True)
                time.sleep(1)
            else:
                print("Not logging", flush=True)
                time.sleep(1)
