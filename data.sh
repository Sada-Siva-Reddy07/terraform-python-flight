#!/bin/bash
sudo yum -y install git 
git clone https://github.com/Sada-Siva-Reddy07/penguin.git
cd penguin
pip3 install -r requirements.txt
screen -m -d python3 app.py
