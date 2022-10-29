#!/bin/bash
sudo su
cd

#.zshrc
rm .zshrc
wget https://github.com/KeepHowling/NewKaliVMsetup/blob/main/.zshrc
wget https://raw.githubusercontent.com/KeepHowling/NewKaliVMsetup/main/.p10k.zsh

mkdir freshInstall
cd freshInstall

#pimpMyKali without input
wget https://raw.githubusercontent.com/KeepHowling/NewKaliVMsetup/main/pimpMyKali_VnoInput.sh 
chmod +x pimpMyKali_VnoInput.sh
./pimpMyKali_VnoInput.sh

#classic tools oriented to bugbounty
git clone https://github.com/JoyGhoshs/0install.git
cd 0install
chmod +x 0install
./0install -i all
