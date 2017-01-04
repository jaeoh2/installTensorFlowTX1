#!/bin/bash
# TensorFlow Installation
# Install Tensorflow repository then
# setup for compilation
# This does not build tensorflow
INSTALL_DIR=$PWD
cd $HOME
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r0.12



