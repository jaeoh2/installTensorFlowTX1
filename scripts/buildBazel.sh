#!/bin/bash
# Ubuntu 16.04
# TensorFlow Installation
# Build Bazel
# You might need to
sudo apt-get install software-properties-common -y
# Add Bazel distribution URI as a package source (one time setup)
echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
# Install and update Bazel
sudo apt-get update && sudo apt-get install bazel -y

