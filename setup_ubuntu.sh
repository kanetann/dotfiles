#!/bin/sh

set -ex

sudo cp -p /etc/sudoers /etc/sudoers_`date +%Y%m%d-%H%M%S`
sudo tee -a /etc/sudoers <<EOF
deploy      ALL=(ALL)       NOPASSWD: ALL
EOF

sudo apt update -y
sudo apt upgrade -y
sudo apt-get install -y unattended-upgrades

sudo cp -p /etc/default/ufw /etc/default/ufw_`date +%Y%m%d-%H%M%S`
sudo sed -i "s/.*IPV6=.*/IPV6=no/g" /etc/default/ufw
sudo ufw default deny
sudo ufw allow 443
sudo ufw allow 10022
sudo ufw enable
sudo ufw reload

# SSH/OpenSSH/Configuring - Community Help Wiki https://help.ubuntu.com/community/SSH/OpenSSH/Configuring
sudo cp -p /etc/ssh/sshd_config /etc/ssh/sshd_config_`date +%Y%m%d-%H%M%S`
sudo sed -i "s/.*ChallengeResponseAuthentication .*/ChallengeResponseAuthentication no/g" /etc/ssh/sshd_config
sudo sed -i "s/.*PasswordAuthentication .*/PasswordAuthentication no/g" /etc/ssh/sshd_config
sudo sed -i "s/.*PermitEmptyPasswords .*/PermitEmptyPasswords no/g" /etc/ssh/sshd_config
sudo sed -i "s/.*PermitRootLogin .*/PermitRootLogin no/g" /etc/ssh/sshd_config
sudo sed -i "s/.*UsePAM .*/UsePAM no/g" /etc/ssh/sshd_config

sudo sed -i "s/.*Port .*/Port 10022/g" /etc/ssh/sshd_config
sudo sed -i "s/.*PubkeyAuthentication .*/PubkeyAuthentication yes/g" /etc/ssh/sshd_config
sudo systemctl restart sshd

sudo apt-get install language-pack-ja manpages-ja manpages-ja-dev -y
sudo update-locale LANG=ja_JP.UTF-8
sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata

# docker
# https://docs.docker.com/engine/install/ubuntu/
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# docker-compose
# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
