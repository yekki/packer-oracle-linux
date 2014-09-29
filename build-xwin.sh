#!/bin/bash
 
set -e
#export PATH=~/0.6.0_darwin_amd64:$PATH 
rm build/OELW6_5.box || true
packer build oracle-linux-6.5-xwin-x86_64.json
vagrant box remove OELW6_5 || true
vagrant box add OELW6_5 build/OELW6_5.box

#rm build/OELW7_0.box || true
#packer build oracle-linux-7.0-xwin-x86_64.json
#vagrant box remove OELW7_0 || true
#vagrant box add OELW7_0 build/OELW7_0.box