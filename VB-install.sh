#установка зависимостей
sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras

#добавим репозиторий
cat << EOF | sudo tee /etc/yum.repos.d/virtualbox.repo 
[virtualbox]
name=Fedora VirtualBox Repo
baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/38/\$basearch
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.virtualbox.org/download/oracle_vbox_2016.asc
EOF

#VirtualBox GPG key
sudo dnf -y search virtualbox

#установка VirtualBox
sudo dnf -y install VirtualBox-6.1

#добавить себя в группу vboxusers
sudo usermod -a -G vboxusers $USER
newgrp vboxusers
