#!/bin/bash

#Note that you must have KVM installed already in order to enable it.
#A greate execercise would be to write a test here to test for the kvm packages and bail if they don't exist.

#Stop virtualbox driver ( hence removing the module )
/etc/init.d/vboxdrv stop

#Load the KVM modules
/sbin/insmod /lib/modules/`uname -r`/kernel/arch/x86/kvm/kvm.ko
/sbin/insmod /lib/modules/`uname -r`/kernel/arch/x86/kvm/kvm-intel.ko
