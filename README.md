# Forked from installTensorFlowTX1
* https://github.com/jetsonhacks/installTensorFlowTX1

# installTensorFlow Ubuntu16.04 with GTX 1070
Install TensorFlow r0.12 on NVIDIA GTX 1070, Ubuntu 16.04

* Ubuntu 16.04 64-bit
* CUDA 8.0
* cuDNN 5.1
* Nvidia GTX 1070

## Installation
TensorFlow should be built in the following order:

### installPrerequisites.sh
Installs Nvidia-driver and other dependencies needed. Also builds:
##### Re-install older version of gcc/g++
Change version gcc-4.8/g++-4.8

### cloneTensorFlow.sh
Git clones r0.11 from the TensorFlow repository and patches the source code for aarch64

### setTensorFlowEV.sh
Sets up the TensorFlow environment variables. This script will ask for the default python library path.

### buildTensorFlow.sh
Builds TensorFlow.

### packageTensorFlow.sh
Once TensorFlow has finished building, this script may be used to create a 'wheel' file, a package for installing with Python. The wheel file will be in the $HOME directory, tensorflow-0.11.0-py2-none-any.whl

### Install wheel file
$ pip install $HOME/tensorflow-0.11.0-py2-none-any.whl

### Test
Run a simple TensorFlow example for the initial sanity check:

$ cd $HOME/tensorflow

$ time python tensorflow/models/image/mnist/convolutional.py 

