wget https://repo.protonvpn.com/fedora-39-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.1-2.noarch.rpm

sudo dnf install -y ./protonvpn-stable-release-1.0.1-2.noarch.rpm

sudo dnf check-update && dnf upgrade

sudo dnf install -y --refresh proton-vpn-gnome-desktop
