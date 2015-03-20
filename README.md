#spark-ipython-scipy

##What is this image?
This image contains web application to host avro schema repository. Code available in github at schema-repo/schema-repo

##How to use this image?
By default, schemas are store in memory. Use the following options based on the requirement.

1. set —env schema_backend= filesystem , to store schemas on disk.
2. substitute <path> with the actual path to store the schemas

```
docker run  -d --env schema_backend=file-system -p 80:2876 -v <path>:/mnt/repository logbase/schema-repo
```

To access shell of the container for loading files to hdfs:
```
docker exec -it logbase/schema-repo /bin/bash
```
