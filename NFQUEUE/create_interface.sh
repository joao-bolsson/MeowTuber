#!/bin/bash

## codigo original

#ifconfig enp0s3:0 10.0.2.16
#ifconfig enp0s3:0 netmask 255.255.255.0

#ifconfig enp0s3:1 10.0.2.17
#ifconfig enp0s3:1 netmask 255.255.255.0

## fim do codigo original

# se o teu ip eh 192.168.15.5 a configuracao eh a abaixo:
ifconfig wlp2s0:0 192.168.15.6
ifconfig wlp2s0:0 netmask 255.255.255.0

ifconfig wlp2s0:1 192.168.15.7
ifconfig wlp2s0:1 netmask 255.255.255.0
