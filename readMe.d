# Running Commend Redis at Docker ENV
``` sh
docker run --name redis \
> -p 6379:6379 \
> --network redis-net \
> -v ~/DEV/redis/data \
> -d redis redis-server --appendonly yes
```
