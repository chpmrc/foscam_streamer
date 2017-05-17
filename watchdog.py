import time
import os
import subprocess

while True:
    cmd = 'wc -c /var/log/supervisor/foscam_streamer.err'.split(' ')
    result1 = int(subprocess.check_output(cmd).split(' ')[0])
    print(result1)
    time.sleep(5)
    result2 = int(subprocess.check_output(cmd).split(' ')[0])
    print(result2)
    if result2 == result1:
        # Webcam is down
        print('Restarting streamer')
        os.system('supervisorctl restart foscam_streamer')
        time.sleep(60)
    else:
        print('Everything OK')
