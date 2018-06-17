# docker-rhenium
Wallet and daemon for Rhenium [XRH] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/rhenium` and see the wallet starting.

```
Docker rhenium wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
XRH: REBnMEH2KqXqWthCvTEr81e7qiVNcSLAjk

Starting XRH daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/Rhenium.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

XRH: REBnMEH2KqXqWthCvTEr81e7qiVNcSLAjk

# License
MIT, see LICENSE file