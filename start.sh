#!/bin/bash
echo "Docker Rhenium wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
XRH: REBnMEH2KqXqWthCvTEr81e7qiVNcSLAjk"

config="/config/lobstex.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.lobstex/lobstex.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.lobstex/wallet.dat
fi

echo "Starting XRH daemon..."
Rheniumd
