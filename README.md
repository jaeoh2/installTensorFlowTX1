# Forked from installTensorFlowTX1
* https://github.com/jetsonhacks/installTensorFlowTX1

# installTensorFlow Ubuntu16.04 with GTX 1070
Install TensorFlow r0.12 on NVIDIA GTX 1070, Ubuntu 16.04

* Ubuntu 16.04 64-bit
* [CUDA 8.0] (https://github.com/jaeoh2/installTensorFlowUbuntu16.04/blob/master/README.md#install-cuda-80)
* [cuDNN 5.1] (https://github.com/jaeoh2/installTensorFlowUbuntu16.04/blob/master/README.md#install-cudnn)
* Nvidia GTX 1070

## Installation
TensorFlow should be built in the following order:

### installPrerequisites.sh
Installs Nvidia-driver and other dependencies needed. Also builds:
##### Re-install older version of gcc/g++
Change version gcc-4.8/g++-4.8
##### Install CUDA 8.0 & cuDNN
Install CUDA Toolkit v8.0

$ wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb

$ sudo dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb

$ sudo apt-get update

$ sudo apt-get install cuda

Insatll cuDNN v6.0 on Ubuntu 16.04
https://developer.nvidia.com/rdp/cudnn-download

$ tar xvzf cudnn-8.0-linux-x64-v5.1-ga.tgz

$ sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include

$ sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64

$ sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

### cloneTensorFlow.sh
Git clones r0.12 from the TensorFlow repository

### setTensorFlowEV.sh
Sets up the TensorFlow environment variables. This script will ask for the default python library path.

### buildTensorFlow.sh
Builds TensorFlow.

### packageTensorFlow.sh
Once TensorFlow has finished building, this script may be used to create a 'wheel' file, a package for installing with Python. The wheel file will be in the $HOME directory, tensorflow-0.11.0-py2-none-any.whl

### Install wheel file
$ sudo pip install --upgrade /tmp/tensorflow_pkg/tensorflow-0.12.0-*.whl

### Test
Run a simple TensorFlow example for the initial sanity check:

$ cd $HOME/tensorflow

$ time python tensorflow/models/image/mnist/convolutional.py 

$ python -c 'import tensorflow as tf; print(tf.\_\_version\_\_)'

