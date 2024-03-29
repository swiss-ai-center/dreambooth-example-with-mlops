#!bin/bash

apt update
apt install -y git
apt install -y python3-pip
apt install -y python3.10-venv
pip3 install --upgrade pip
pip3 install -r requirements.txt

# This is the tool used to read yaml files from bash
apt install -y jq
jq --version
pip install yq
yq --version

git clone https://github.com/huggingface/diffusers

pip install -e ./diffusers
pip install -r ./diffusers/examples/dreambooth/requirements.txt

accelerate config default
