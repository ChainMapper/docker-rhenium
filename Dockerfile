FROM ubuntu:xenial

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install libboost-system1.58.0 libboost-filesystem1.58.0 libboost-program-options1.58.0 \
	libboost-thread1.58.0 libboost-chrono1.58.0 libdb4.8 libdb4.8++ libssl1.0.0 unzip \
	libevent-2.0-5 libevent-pthreads-2.0-5 software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get -y install libdb4.8-dev libdb4.8++-dev unzip \
    && apt-get -y install wget libzmq5 libminiupnpc10
	
ENV WALLET_URL=https://github.com/Rheniumnetwork/Rhenium/releases/download/v3.0.6/Linux16.04.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip -j /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/Rhenium* \
	&& mkdir -p /data/.Rhenium
	
COPY Rhenium.conf /data/.Rhenium/Rhenium.conf

#rpc port & main port
EXPOSE 6110 5110

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh
