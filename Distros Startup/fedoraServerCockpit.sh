#!/bin/bash

# Run the entire script as the root user to avoid permission issues
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root."
    exit 1
fi

# Function to remove the actual dnf configuration and replace it with the one in this file
update_dnf() {
    echo "# see 'man dnf.conf' for defaults and possible options" >> /etc/dnf/dnf.conf
    printf "\n\n[main]\ngpgcheck=True\ninstallonly_limit=3\nclean_requirements_on_remove=True\nbest=False\n\n" >> /etc/dnf/dnf.conf
    echo "# Speed up DNF with fastestmirror plugin" >> /etc/dnf/dnf.conf
    printf "\nskip_if_unavailable=True\nfastestmirror=True\nmax_parallel_downloads=10\ndefaultypes=True\nkeepcache=True\n" >> /etc/dnf/dnf.conf
}

hostnamectl set-hostname fedoraVM
rm /etc/dnf/dnf.conf.bak
mv /etc/dnf/dnf.conf /etc/dnf/dnf.conf.bak
touch /etc/dnf/dnf.conf
update_dnf
dnf update

dnf install -y cockpit cockpit-bridge cockpit-file-sharing cockpit-networkmanager cockpit-packagekit cockpit-selinux cockpit-storaged cockpit-system cockpit-ws cockpit-389-ds cockpit-composer cockpit-doc cockpit-ha-cluster cockpit-kdump cockpit-machines cockpit-navigator cockpit-ostree cockpit-pcp cockpit-podman cockpit-session-recording cockpit-sosreport cockpit-tests ufw

systemctl enable --now cockpit.socket
systemctl start cockpit.socket
systemctl enable --now ufw
systemctl start ufw

ufw allow 9090
