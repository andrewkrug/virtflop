#!/bin/bash

#Stop libvirtd
systemctl stop libvirtd

#Remove the processor specific module
/sbin/rmmod kvm_intel

#Remove the kernel module for kvm
/sbin/rmmod kvm

#Start the vbox driver
/etc/init.d/vboxdrv start

