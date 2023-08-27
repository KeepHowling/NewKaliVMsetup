#!/bin/bash
sudo su
cd
cd Downloads 

#pimpMyKali without input --> gets root login
git clone https://github.com/Dewalt-arch/pimpmykali.git
cd pimpmykali
./pimpmykali.sh

#fonts --> set them in terminal
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
cp Hack.zip /usr/share/fonts
cd /usr/share/fonts; unzip Hack.zip

#ls & cat
wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd-musl_0.23.1_amd64.deb
dpkg -i lsd-musl_0.23.1_amd64.deb
sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

#docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt install docker-ce -y

#classic tools oriented to bugbounty
git clone https://github.com/JoyGhoshs/0install.git
cd 0install
chmod +x 0install
./0install -i all

#.zshrc
git clone https://github.com/romkatv/powerlevel10k.git
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
zsh
mkdir temp_zshrc
cp ~/.zshrc temp_zshrc
rm .zshrc
cd
wget https://github.com/KeepHowling/NewKaliVMsetup/blob/main/.zshrc
wget https://raw.githubusercontent.com/KeepHowling/NewKaliVMsetup/main/.p10k.zsh
zsh

#volatility2 y 3
sudo apt install -y build-essential git libdistorm3-dev yara libraw1394-11 libcapstone-dev capstone-tool tzdata
sudo apt install -y python2 python2.7-dev libpython2-dev
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
sudo python2 -m pip install -U setuptools wheel
python2 -m pip install -U distorm3 yara pycrypto pillow openpyxl ujson pytz ipython capstone
sudo python2 -m pip install yara
sudo ln -s /usr/local/lib/python2.7/dist-packages/usr/lib/libyara.so /usr/lib/libyara.so
python2 -m pip install -U git+https://github.com/volatilityfoundation/volatility.git
sudo apt install -y python3 python3-dev libpython3-dev python3-pip python3-setuptools python3-wheel
python3 -m pip install -U distorm3 yara pycrypto pillow openpyxl ujson pytz ipython capstone
python3 -m pip install -U git+https://github.com/volatilityfoundation/volatility3.git
echo 'export PATH=/root/.local/bin:$PATH' >> ~/.zshrc
. ~/.zshrc


#burpsuite cracked
apt install libpcrecpp0v5 libc-ares-dev zlib1g-dev libuv1 libssl-dev libsodium-dev readline-common sqlite3 curl autoconf libtool g++ libcrypto++-dev libz-dev libsqlite3-dev libssl-dev libcurl4-gnutls-dev libreadline-dev libsodium-dev libc-ares-dev libfreeimage-dev libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libmediainfo-dev libzen-dev
apt install --reinstall build-essential
mega-get 'https://mega.nz/folder/8d9FWBrT#LBMcN1WA-lJk6Bq7Bq023Q'
#setup the license for your user with the v2022.3.6
java -jar BurpLoaderKeygen.jar 
#click and download the lastest burpsuite edition and copy the command on the loader
