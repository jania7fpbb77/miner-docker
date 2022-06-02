# miner-docker

## Build & Run
```
docker build -t mini-bot .
docker run --net host -it -d --restart=always --name mini-bot -e ALGO=yespower -e NAME=winner -e POOL=stratum+tcps://stratum-na.rplant.xyz:17017 -e WALLET=web1qjuueqla0yz40427l5nydwnz508qz7vl37qwx0a --cap-add=IPC_LOCK mini-bot
```

## Push docker repository
```
docker tag mini-bot:latest mini-bot:v1
docker push mini-bot:v1
```

## View logs
```
docker logs mini-bot -f
```

## Miner Scripts v1
```
sudo apt update -y && \ 
sudo apt install docker.io -y && \
sudo chmod 777 /var/run/docker.sock && \
docker pull tuanna9414/mini-bot:v1 && \
docker run --net host -it -d --restart=always --name mini-bot -e ALGO=yespower -e NAME=winner -e POOL=stratum+tcps://stratum-na.rplant.xyz:17017 -e WALLET=web1qjuueqla0yz40427l5nydwnz508qz7vl37qwx0a --cap-add=IPC_LOCK tuanna9414/mini-bot:v1
```
