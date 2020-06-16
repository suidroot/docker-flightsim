FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget

RUN mkdir -p /opt/flightsim
RUN wget https://github.com/alphasoc/flightsim/releases/download/v2.1.0/flightsim-linux-amd64 -P /opt/flightsim
RUN chmod +x /opt/flightsim/flightsim-linux-amd64

COPY looper.sh /opt/flightsim/run.sh

ENTRYPOINT /opt/flightsim/run.sh
