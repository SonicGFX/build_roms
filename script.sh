#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

repo init -u https://github.com/crdroidandroid/android.git -b 15.0 --git-lfs
git clone https://github.com/SonicGFX/local_manifests --depth 1 -b los .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp1a-userdebug
mka bacon
