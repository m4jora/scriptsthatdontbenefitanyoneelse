#!/bin/bash

protonvpn-cli ks --off
protonvpn-cli d
protonvpn-cli ns --ads-malware
protonvpn-cli ks --permanent
protonvpn-cli config --vpn-accelerator enable
protonvpn-cli r --sc
