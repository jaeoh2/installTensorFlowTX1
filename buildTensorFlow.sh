#!/bin/bash
# NVIDIA Gtx 1070
# Ubuntu 16.04
# TensorFlow Installation
# Build Tensorflow
cd $HOME/tensorflow
bazel build -c opt --config=cuda //tensorflow/tools/pip_package:build_pip_package


