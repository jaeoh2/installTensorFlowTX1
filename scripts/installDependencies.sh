#!/bin/bash
# Ubuntu 16.04
# Install TensorFlow dependencies
# Install latest nvidia-driver from ppa:graphics-drivers/ppa
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get install nvidia-375
sudo apt-get install mesa-common-dev
sudo apt-get install freeglut3-dev
# Install Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
# Install other dependencies
sudo apt-get install build-essential -y
sudo apt-get install python-numpy swig python-dev python-pip python-wheel -y
