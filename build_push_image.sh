# /bin/bash

# Membuat Docker image dengan nama "item-app" dan tag "v1" dari Dockerfile.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages.
docker tag item-app:v1 ghcr.io/arfaniasra/a433-microservices/item-app:v1

# Login ke GitHub Packages.
echo $TOKEN | docker login ghcr.io -u ArfaniAsra --password-stdin
# Anda akan diminta untuk memasukkan nama pengguna dan kata sandi Docker Hub (atau token autentikasi GitHub Packages).

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/arfaniasra/a433-microservices/item-app:v1