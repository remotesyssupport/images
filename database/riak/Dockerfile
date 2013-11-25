FROM ubuntu:precise
RUN apt-get -qq update && apt-get install -y curl                                                              && \
    curl http://apt.basho.com/gpg/basho.apt.key | apt-key add -                                                && \
    echo deb http://apt.basho.com precise main > /etc/apt/sources.list.d/basho.list                            && \
    apt-get update                                                                                             && \
    apt-get install -y riak

EXPOSE 8098
ENTRYPOINT ["/usr/sbin/riak"]
CMD ["start"]


# see https://index.docker.io/u/guillermo/riak/
# see http://docs.docker.io/en/latest/examples/running_riak_service/
