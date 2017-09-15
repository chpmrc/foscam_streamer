# sudo apt-get --purge remove ffmpeg
# sudo apt-get --purge autoremove

# sudo apt-get install ppa-purge
# sudo ppa-purge ppa:jon-severinsson/ffmpeg

# sudo add-apt-repository ppa:mc3man/trusty-media

add-apt-repository -y ppa:jonathonf/ffmpeg-3
apt-get update
apt-get dist-upgrade -y

apt-get install -y ffmpeg
