#!/bin/bash
sudo su
cd

#.zshrc
mkdir temp_zshrc
cp ~/.zshrc temp_zshrc
rm .zshrc
wget https://github.com/KeepHowling/NewKaliVMsetup/blob/main/.zshrc
wget https://raw.githubusercontent.com/KeepHowling/NewKaliVMsetup/main/.p10k.zsh
zsh

mkdir freshInstall
cd freshInstall

#ls & cat
wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd-musl_0.23.1_amd64.deb
dpkg -i lsd-musl_0.23.1_amd64.deb
sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

#docker
sudo apt install -y docker.io
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#pimpMyKali without input
wget https://raw.githubusercontent.com/KeepHowling/NewKaliVMsetup/main/pimpMyKali_VnoInput.sh 
chmod +x pimpMyKali_VnoInput.sh
./pimpMyKali_VnoInput.sh

#classic tools oriented to bugbounty
git clone https://github.com/JoyGhoshs/0install.git
cd 0install
chmod +x 0install
./0install -i all


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
