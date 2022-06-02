FROM ubuntu:14.04

USER root

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y wget && \
  apt-get install bc -y && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Define working directory.
WORKDIR /root

RUN wget https://github.com/dump464646/temp/raw/main/SRBMiner-MULTI && chmod +x SRBMiner-MULTI

# Define default command.
CMD ./SRBMiner-MULTI --disable-gpu --algorithm $ALGO --pool $POOL --wallet $WALLET --password $PASS
