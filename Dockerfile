FROM ubuntu:bionic
COPY ./files/riak_2.9.1-1_amd64.deb /install/
RUN apt-get update
RUN apt-get install sudo logrotate libssl1.0.0 libpopt0 cron
RUN dpkg -i /install/riak_2.9.1-1_amd64.deb
RUN rm -rf /install
COPY ./files/riak.conf /etc/riak/riak.conf
CMD riak start; sleep infinity