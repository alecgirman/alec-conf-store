import os
import time
sh = os.system

while (True):
    with os.popen('date', 'r') as proc:
        print(proc.read())

    time.sleep(3)
