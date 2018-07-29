FROM ubuntu:18.04

# install openvpn
RUN apt-get update \
    && apt-get install -y --no-install-recommends openvpn \
    && apt-get install -y wget less vim \
    && rm -rf /var/lib/apt/lists/*

# install easy-rsa3
RUN wget -q https://github.com/OpenVPN/easy-rsa/releases/download/v3.0.4/EasyRSA-3.0.4.tgz \
    && tar -xzf EasyRSA-3.0.4.tgz \
    && ln -s $(pwd)/EasyRSA-3.0.4/easyrsa /usr/bin/easyrsa



