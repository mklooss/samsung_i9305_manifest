#!/bin/bash

make clobber
repo sync -j4 -c --no-clone-bundle
repo sync device/samsung/i9305 -j4 -c --no-clone-bundle
repo sync device/samsung/smdk4412-common -j4 -c --no-clone-bundle
repo sync device/samsung/smdk4412-qcom-common -j4 -c --no-clone-bundle
repo sync hardware/samsung -j4 -c --no-clone-bundle
repo sync kernel/samsung/smdk4412 -j4 -c --no-clone-bundle
repo sync vendor/samsung -j4 -c --no-clone-bundle

source build/envsetup.sh

croot
add_lunch_combo cm_i9305-userdebug
breakfast cm_i9305-userdebug
brunch cm_i9305-userdebug
