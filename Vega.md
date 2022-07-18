# Installing Vega
Vega is getting difficult to install as it appears as though it is not bein updating and thus relying on older/outdated libraries.

## Install Java 8
[See this StackExchange post.](https://askubuntu.com/questions/1246061/how-to-install-java-8-0-232-ubuntu-18-0-4)

Basically, you need to install it and then set it using `update-alternatives` with the following:
```
wget https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u232-b09/OpenJDK8U-jdk_x64_linux_8u232b09.tar.gz
sudo tar -xvf OpenJDK8U-jdk_x64_linux_8u232b09.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/openjdk-8u232-b09/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/openjdk-8u232-b09/bin/javac 1
sudo update-alternatives --config java
```

## Installing libwebkitgtk-1.0-0
[See this StackExchange post](https://stackoverflow.com/questions/62301866/how-to-install-the-libwebkitgtk-package-on-ubuntu-20-04-lts) and [this one](https://askubuntu.com/questions/732985/force-update-from-unsigned-repository).

Basically, you need to add a link to the sources.list and also set it as trusted.
```
sudo echo 'deb http://cz.archive.ubuntu.com/ubuntu bionic main universe' >> 
sudo apt update
sudo apt remove libturbojpeg0
sudo apt install libwebkitgtk-1.0-0
```

## Downloading Vega
With the above prerequisites, we are now able to download Vega from https://subgraph.com/vega/download/index.en.html,
once downloaded extract the file and run `./Vega`.
