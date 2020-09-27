#! /bin/bash

apt-get update

# install pip
apt-get install python3-pip -y

# install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | tee /etc/apt/sources.list.d/docker.list
apt install -y docker.io
systemctl enable docker --now
sudo usermod -aG docker kali

# install scoutsuite
pip install ScoutSuite

# install pacu
git clone https://github.com/RhinoSecurityLabs/pacu && mv ./pacu/ /home/kali/
pip install -r /home/kali/pacu/requirements.txt

# install cloudsplaining
pip3 install cloudsplaining
