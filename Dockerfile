FROM ubuntu:latest
ENV USER root
ENV HOME /root
ADD bin/linux/ngrok /bin/ngrok
ADD conf/ngrok.yml $HOME/ngrok.yml
ADD bin/ngrok_discover /bin/ngrok_discover
EXPOSE 4040
RUN apt-get update
RUN apt-get -y install curl net-tools jq
CMD /bin/ngrok_discover
