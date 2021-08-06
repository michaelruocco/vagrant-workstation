dnf groupinstall "Workstation" -y
systemctl set-default graphical.target
systemctl isolate graphical.target