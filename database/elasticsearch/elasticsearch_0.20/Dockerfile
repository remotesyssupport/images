FROM ubuntu:precise
RUN apt-get -qq update && apt-get install -y openjdk-6-jdk wget                                       && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.tar.gz   && \
    tar xzf elasticsearch-0.20.6.tar.gz                                                               && \
    mv elasticsearch-0.20.6 elasticsearch                                                             && \
    mv elasticsearch /opt
EXPOSE 9200
ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
CMD ["-f", "-Xmx2g", "-Xms2g", "-Des.index.store.type=memory"]
