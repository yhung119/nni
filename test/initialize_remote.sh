#!/bin/bash

pw="nniNNI123nniNNI"
ip="nni@104.210.63.241"
key="id_rsa"
echo "Initializing remote machine..."
ssh -i $key $ip "rm -rf pynni"
echo "Copy nni sdk to remote machine..."
scp -i $key -r ../src/sdk/pynni $ip:~
echo "Install nni sdk in remote machine..."
ssh -i $key $ip "cd pynni && python3 -m pip install --user ."