import os
import sys

sys.getallocatedblocks(

echo = print
sh = os.system

def main():
    '''
    Begins the initialization process on my laptop.  This code is specific for my laptop and may 
    have unintended conseqnences when ran on a different device.
    '''

    try:
        # change the brightness to max, default brightness is really low
        brt_file = open('/sys/class/backlight/intel_backlight/brightness', 'wt')
        brt_file.write("7500")
        brt_file.close()
        
    except:
       echo('Unable to change the brightness...looks like you have to fix this') 
       sh('sleep 1')
       sh('vim /fd/init/laptop.py') # on failure, open this file in vim LOL 




# check if executed by user
if __name__ == '__main__':
    main()
else:
    pass # do nothing if imported






# wifi-setup
# 
# if [ $? = 0 ]; then
# 	watch -g ping www.google.com
# elif [ $? = 1 ]; then
# 	echo 'wifi-menu says it was aborted by user.  If you hit <Esc>, then dont worry about this message.'
# 
# init-common
