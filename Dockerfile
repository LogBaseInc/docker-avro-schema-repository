FROM maven

MAINTAINER Kousik kousik@logbase.io

#By default, schemas will be store in memory
ENV schema_backend in-memory

RUN git clone https://github.com/koukumar/schema-repo.git

WORKDIR /schema-repo

RUN mvn install

EXPOSE 2876

COPY local-file-system-config.properties bundle/config/

CMD ./run.sh $schema_backend
