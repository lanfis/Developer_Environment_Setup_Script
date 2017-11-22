#!/bin/sh
echo "-- Installing Bazl ...\n";
sudo apt-get -y update;
sudo apt-get install -y openjdk-8-jdk;
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update && sudo apt-get install -y oracle-java8-installer;
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list;
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -;
sudo apt-get -y update && sudo apt-get install -y bazel;
sudo apt-get -y upgrade bazel;