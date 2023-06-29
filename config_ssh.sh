#!/bin/bash

echo "Ingresar EMAIL"
read email

ssh-keygen -t rsa -b 4096 -C "$email"
ls -al ~/.ssh
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

echo "COPY AND PASTE in GitHub"
cat ~/.ssh/id_rsa.pub