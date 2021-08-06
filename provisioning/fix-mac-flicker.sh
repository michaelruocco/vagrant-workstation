# this script fixes the issue described here
# https://medium.com/@gevorggalstyan/how-to-fix-flickering-in-some-versions-of-linux-on-virtualbox-822fb41a263d

line="WaylandEnable=false"
sed -i "/^#$line/ c$line" /etc/gdm/custom.conf