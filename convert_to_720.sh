
# Script to convert to 720 pixels high and 2600 kbps


mkdir .convert
mv "$1" .convert/
cd .convert
time ffmpeg -y -hide_banner -loglevel error -i "$1" -vf scale=-1:720 -c:v libx264 -b:v 2600k -pass 1 -an -f null /dev/null && ffmpeg -y -i "$1" -vf scale=-1:720 -c:v libx264 -b:v 2600k -pass 2 -c:a aac -b:a 128k ../"$1"
cd ..
