curl -s "https://get.sdkman.io" | bash
source "/home/vagrant/.sdkman/bin/sdkman-init.sh"

sdk install java 16.0.1.j9-adpt
sdk install gradle
sdk install maven

rm -rf javasharedresources