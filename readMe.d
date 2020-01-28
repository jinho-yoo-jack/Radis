# Running Commend Redis at Docker ENV
1. Create Network
- commend : docker network create NETWORK_NAME
```sh
# docker network create redis-net
# docker network ls
```

2. Create Container Redis
- commend : docker run 
``` sh
# docker run --name redis \
#           -p 6379:6379 \
#           --network redis-net \
#           -v ~/DEV/redis/data \
#           -d redis redis-server --appendonly yes
# docker ps
```
- options
--name : Container 이름
-p     : host에 노출할 Port
--network : 사용할 Network
-v      : host와 연결할 디렉토리

3. Connect Redis-cli
- commend : docker run -it --network NETWORK_NAME --rm CONTAINER_ID redis-cli -h CONTAINER_NAME
```sh
# docker run -it --network redis-net --rm redis redis-cli -h redis
# ----- Change prompt from MAC to Redis-cli ------
# redis:6379>

#
