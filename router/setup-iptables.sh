#!/bin/bash

# vide des règles existantes
iptables -F
iptables -t nat -F

# Zero Trust
iptables -P INPUT DROP
iptables -P FORWARD DROP

iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.100.10 --dport 80 -j ACCEPT
iptables -A FORWARD -p tcp -d 192.168.100.10 --dport 443 -j ACCEPT

# Autoriser Wazuh (1514, 1515) dans le LAN
iptables -A FORWARD -p tcp -d 192.168.100.30 --dport 1514:1515 -j ACCEPT

# Masquerading (NAT) pour que le LAN puisse sortir via le WAN
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE