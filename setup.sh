#!/bin/bash -e

# Wifi
cp 'iwlwifi-7265-ucode-25.17.12.0/iwlwifi-7265D-12.ucode' /lib/firmware/iwlwifi-3165-9.ucode
cp 'iwlwifi-7265-ucode-25.17.12.0/iwlwifi-7265-12.ucode' /lib/firmware/iwlwifi-3165-12.ucode

# Audio
cat >/etc/modprobe.d/intel.conf <<EOL
options snd-hda-intel single_cmd=1
options snd-hda-intel probe_mask=1
EOL
