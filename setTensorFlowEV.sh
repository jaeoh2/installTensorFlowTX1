#!/bin/bash
# NVIDIA Gtx 1070
# TensorFlow Installation
# Build TensorFlow

cd $HOME/tensorflow
# Setup the environment variables for configuration
# PYTHON Path is the default
default_python_bin_path=$(which python)
PYTHON_BIN_PATH=$default_python_bin_path
# No Google Cloud Platform support
TF_NEED_GCP=0
# No Hadoop file system support
TF_NEED_HDFS=0
# Use CUDA
TF_NEED_CUDA=1
# Setup gcc ; just use the default
default_gcc_host_compiler_path=$(which gcc)
GCC_HOST_COMPILER_PATH=$default_gcc_host_compiler_path
# TF CUDA Version 
TF_CUDA_VERSION=8.0
# CUDA path
default_cuda_path=/usr/local/cuda
CUDA_TOOLKIT_PATH=$default_cuda_path
# cuDNN
TF_CUDNN_VERSION=5.1.5
default_cudnn_path=/usr/local/cuda
CUDNN_INSTALL_PATH=$default_cudnn_path
# CUDA compute capability
TF_CUDA_COMPUTE_CAPABILITIES=5.2,6.1
source ./configure
