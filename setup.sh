#!/bin/bash

conda create -n instrag python=3.10 -y

conda activate instrag

pip install numpy==1.26.4

# req cuda 12.1
pip install vllm==0.4.1

pip install accelerate

# req nvcc
pip install flash-attn==2.5.6 --no-build-isolation

# our a40
conda install nvidia::cuda-nvcc
pip install flash-attn==2.5.6 --no-build-isolation --use-pep517
