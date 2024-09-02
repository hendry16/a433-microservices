#!/bin/bash

# membuat image item-app dengan tag v1
docker build -t item-app:v1 .

# menampilkan list image
docker images

# mengubah nama local reposity mengikuti penamaan remote repository 
docker tag item-app:v1 ghcr.io/hendry16/item-app:v1

# login ke github package
echo $CR_PAT | docker login ghcr.io -u hendry16 --password-stdin

# push repository ke github package
docker push ghcr.io/hendry16/item-app:v1