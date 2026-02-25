FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    nmap \
    netcat-traditional \
    curl \
    hping3 \
    metasploit-framework \
    && apt-get clean

CMD ["bash"]