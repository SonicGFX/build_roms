#!/bin/bash

rm -rf .repo/local_manifests

rm -rf prebuilts/clang/host/linux-x86

repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
git clone https://github.com/SonicGFX/local_manifests --depth 1 -b los23 .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch lineage_garnet-bp2a-userdebug
make bacon
