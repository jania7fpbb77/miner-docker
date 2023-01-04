# miner-docker

## Build & Run
```
docker build -t mini-bot .
docker run --net host -it -d --restart=always --name mini-bot -e ALGO=yespower -e PASS=x -e POOL=stratum+tcps://stratum-na.rplant.xyz:17017 -e WALLET=web1qjuueqla0yz40427l5nydwnz508qz7vl37qwx0a.winner --cap-add=IPC_LOCK mini-bot
```

## UAM build
```
docker build -t uam_ui:latest -f Dockerfile-uam .
docker run -it -d --restart always -e WALLET=57D4B88E6BC80DD524DD5CE27F6CD0E48CECB3B67CAE169BC91E698706F22B0D --cap-add=IPC_LOCK uam_ui:latest
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

## Delete all containers
```
docker rm -f $(docker ps -aq)
```

## Miner Scripts v2
```
sudo apt update -y && \ 
sudo apt install docker.io -y && \
sudo chmod 777 /var/run/docker.sock && \
docker pull tuanna9414/mini-bot:v2 && \
docker run --net host -it -d --restart=always --name mini-bot -e ALGO=yespower -e NAME=winner -e POOL=stratum+tcps://stratum-na.rplant.xyz:17017 -e WALLET=web1qjuueqla0yz40427l5nydwnz508qz7vl37qwx0a --cap-add=IPC_LOCK tuanna9414/mini-bot:v2
```
