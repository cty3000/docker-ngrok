FROM alpine:latest

ENV USER root
ENV HOME /root

ADD bin/linux/ngrok /bin/ngrok
ADD conf/ngrok.yml $HOME/ngrok.yml
ADD bin/ngrok_discover /bin/ngrok_discover

EXPOSE 4040

ENTRYPOINT ["/bin/ngrok_discover"]
