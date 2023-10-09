#!/bin/bash
# check to see if backup device is mounted
if [ ! -f /mnt/160GB/.160GB ] ; then /home/pi/bin/notify '160GB disk not mounted on microserver, root backup not performed'; >&2 echo '160GB disk not mounted, root backup not performed'  ; exit 1 ; fi

# perform backup
rsync -aAXv --exclude={"/volume1/*","/volume2/*","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / /mnt/160GB/microserver_root_backup/
