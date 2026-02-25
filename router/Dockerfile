FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    iptables \
    iproute2 \
    iputils-ping \
    vim \
    && apt-get clean

COPY setup-iptables.sh /usr/local/bin/setup-iptables.sh
RUN chmod +x /usr/local/bin/setup-iptables.sh

CMD ["bash"]