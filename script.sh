#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle
git clone https://github.com/SonicGFX/local_manifests --depth 1 -b cr16 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp2a-userdebug
mka bacon
