#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

set -e 
cd `dirname $0`

EXTERNAL_REL_BUILDROOT=../base_external

make -C buildroot xconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT}
./save-config.sh
