FROM ubuntu:18.04

RUN apt update && apt install -y curl jq netcat openssh-server rsync \
 &&  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
 && chmod +x kubectl && mv kubectl /bin/
