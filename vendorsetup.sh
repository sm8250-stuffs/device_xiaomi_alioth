#!/bin/bash
rm -rf frameworks/native frameworks/av vendor/xiaomi/camera system/libhwbinder device/custom/sepolicy device/qcom/sepolicy device/qcom/sepolicy-legacy-um device/qcom/sepolicy_vndr/legacy-um device/xiaomi/alioth device/xiaomi/sm8250-common vendor/xiaomi/alioth vendor/xiaomi/sm8250-common kernel/xiaomi/sm8250 hardware/qcom-caf/sm8250/display hardware/qcom-caf/sm8250/audio hardware/qcom-caf/sm8250/media hardware/xiaomi packages/resources/devicesettings && \
git clone https://github.com/sm8250-stuffs/device_xiaomi_sm8250-common-new --depth 1 -b los device/xiaomi/sm8250-common && \
git clone https://github.com/sm8250-stuffs/vendor_xiaomi_alioth --depth 1 -b los vendor/xiaomi/alioth && \
git clone https://github.com/sm8250-stuffs/vendor_xiaomi_sm8250-common --depth 1 -b aosp-14 vendor/xiaomi/sm8250-common && \
git clone https://github.com/Project-Zephyrus/kernel_xiaomi_sm8250 --depth 1 -b aosp-14 kernel/xiaomi/sm8250 && \
git clone https://github.com/sm8250-stuffs/hardware_qcom-caf_sm8250_display --depth 1 -b fourteen hardware/qcom-caf/sm8250/display && \
git clone https://github.com/sm8250-stuffs/hardware_qcom-caf_sm8250_audio --depth 1 -b fourteen hardware/qcom-caf/sm8250/audio && \
git clone https://github.com/sm8250-stuffs/hardware_qcom-caf_sm8250_media --depth 1 -b fourteen hardware/qcom-caf/sm8250/media && \
git clone https://github.com/sm8250-stuffs/hardware_xiaomi -b aosp-14 hardware/xiaomi && \
git clone https://github.com/sm8250-stuffs/packages_resources_devicesettings -b los packages/resources/devicesettings && \
git clone https://github.com/VoidUI-Andromeda/device_custom_sepolicy -b aosp-14 device/custom/sepolicy && \
git clone https://github.com/PixelExperience/device_qcom_sepolicy -b fourteen device/qcom/sepolicy && \
git clone https://github.com/PixelExperience/device_qcom_sepolicy-legacy-um -b fourteen device/qcom/sepolicy-legacy-um && \
git clone https://github.com/PixelExperience/device_qcom_sepolicy_vndr_legacy-um -b fourteen device/qcom/sepolicy_vndr/legacy-um && \
git clone https://github.com/VoidUI-Andromeda/system_libhwbinder --depth 1 -b aosp-14 system/libhwbinder && \ 
git clone https://gitlab.com/nhAsif/vendor_xiaomi_camera --depth 1 -b aosp-14 vendor/xiaomi/camera && \ 
git clone https://github.com/sm8250-alt/android_frameworks_native --depth 1 -b ursa frameworks/native && \
git clone https://github.com/sm8250-alt/android_frameworks_av --depth 1 -b ursa frameworks/av && \

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic
