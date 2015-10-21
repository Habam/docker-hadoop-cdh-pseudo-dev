# docker-hadoop-cdh-pseudo-dev

## Docker layers
1. Centos6.7
2. JDK 8u60
3. CDH latest
4. Hadoop in pseudo-distributed mode

## How to run docker container
```
docker run -d --name hadoop-pseudo -p 8020:8020 -p 8088:8088 -p 50070:50070 habam/cdh5-hadoop-pseudo
```
### If you meet this error msg: 
Error response from daemon: Conflict. The name "hadoop-pseudo" is already in use by container *47b4f31fac6f*. You have to delete (or rename) that container to be able to reuse that name.
Do following command to remove existing name
```
docker rm 47b4f31fac6f
```

## How to attach a running container
```
docker exec -ti ${CONTAINER ID} bash
```
