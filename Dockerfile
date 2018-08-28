FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/Rheniumnetwork/Rhenium/releases/download/v3.0.6/Linux16.04.zip

RUN wget $WALLET_URL -O /tmp/wallet.zip \
	&& unzip -j /tmp/wallet.zip -d /usr/local/bin \
	&& chmod +x /usr/local/bin/*

#rpc port & mainport
EXPOSE 6110 5110

RUN mkdir /data
ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh Rhenium.conf XRH Rheniumd
