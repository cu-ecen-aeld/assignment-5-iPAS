#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

#EXTERNAL_REL_BUILDROOT=../base_external
#git submodule init
#git submodule sync
#git submodule update

set -e 
cd `dirname $0`

echo 'Clean Evaporatedly'
make -C buildroot distclean BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
rm -f ${AESD_MODIFIED_DEFCONFIG}
