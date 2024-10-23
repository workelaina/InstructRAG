#!/bin/bash

sudo apt update
# sudo apt upgrade
sudo apt install git vim screen tree pkg-config
# vim ~/.ssh/authorized_keys

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
# rm ~/miniconda3/miniconda.sh

source ~/miniconda3/bin/activate
conda init --all

cd /mnt
sudo mkdir v1
sudo chown -R ubuntu v1
sudo chgrp -R ubuntu v1

vim ~/.bashrc
# cd /ephemeral

git clone https://github.com/workelaina/InstructRAG.git
# sudo chown -R ubuntu InstructRAG
# sudo chgrp -R ubuntu InstructRAG

conda create -n instrag python=3.10 -y

conda activate instrag

pip install numpy==1.26.4

# req cuda 12.1
pip install vllm==0.4.1

pip install accelerate

# req nvcc
pip install flash-attn==2.5.6 --no-build-isolation

# our a40
# conda install nvidia::cuda-nvcc
# pip install flash-attn==2.5.6 --no-build-isolation --use-pep517

huggingface-cli login
# hf_SettingsAccessTokensRepositoriesPermissions
