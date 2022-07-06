#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

set -e 
cd `dirname $0`

EXTERNAL_REL_BUILDROOT=../base_external

make -C buildroot distclean BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
rm -f ${AESD_MODIFIED_DEFCONFIG}

./build.sh
./save-config.sh

echo '
BR2_TARGET_GENERIC_ROOT_PASSWD="root"
BR2_PACKAGE_DROPBEAR=y
BR2_PACKAGE_AESD_ASSIGNMENTS=y'  >> buildroot/.config
./xconfig.sh
