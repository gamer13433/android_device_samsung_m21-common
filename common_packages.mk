### AUDIO
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.audio.service \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudioroute \
    libtinyalsa \
    libtinycompress 

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/audio/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml
 
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_configuration.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_default_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_default_stream_volumes.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_product_strategies.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_product_strategies.xml \
    frameworks/av/services/audiopolicy/enginedefault/config/example/phone/audio_policy_engine_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_stream_volumes.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# BLUETOOTH #
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.bluetooth.default \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hardware.bluetooth.audio@2.0 \
    android.hardware.bluetooth.audio@2.0-impl:32 
    libbt-vendor

PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/libbt/conf/bt_did.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_did.conf \
    hardware/samsung_slsi/libbt/conf/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# CAMERA #
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.5 \
    android.hardware.camera.provider@2.4-legacy \
    android.hardware.camera.provider@2.5-legacy \
    Snap

# GATEKEEPER #
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:64 \
    android.hardware.gatekeeper@1.0-service

# GRAPHICS #
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.2-impl \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.mapper@2.0-impl-2.1

# HEALTH #
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl:64 \
    android.hardware.health@2.1-service

# HIDL #
PRODUCT_PACKAGES += \
   libhidltransport \
   libhidltransport.vendor \
   libhwbinder \
   libhwbinder.vendor

# INIT #
PRODUCT_PACKAGES += \
    init.exynos9611.rc \
    init.exynos9611.usb.rc \
    fstab.exynos9611 \
    ueventd.exynos9611.rc  \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc

# KEYLAYOUT #
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/keylayout/gpio_keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio_keys.kl

# KEYMASTER #
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor:64

# LIGHT #
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung

# MEDIA #
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl \
    android.hardware.media.omx@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# MEMTRACK #
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl:64 \
    android.hardware.memtrack@1.0-service

# OMX #
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libc2dcolorconvert \
    libmm-omxcore \
    libstagefrighthw

# POWER #
PRODUCT_PACKAGES += \
    android.hardware.power@1.3-service.samsung-libperfmgr \
    libperfmgr.vendor:64

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/power/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json
    
# PUBLIC LIBRARIES #
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/linker/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt
    
# RECOVERY #
PRODUCT_PACKAGES += \
    init.recovery.exynos9611.rc
    ueventd.recovery.exynos9611.rc

# RENDERSCRIPT #
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# SENSORS #
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.samsung-multihal \
    libsensorndkbridge

# SHIMS #
PRODUCT_PACKAGES += \
    libshim_sensorndkbridge
    
# SOUNDTRIGGER #
PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.0-impl:32

# SYSCONFIG #
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/sysconfig/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml
    
# THERMAL #
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.samsung

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/thermal/thermal_info_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/thermal_info_config.json

# TOUCH HAL #
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung  

# USB #
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service.typec
    
# USB TRUST HAL #
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# WIFI #
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    WifiOverlay \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/config/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/config/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(COMMON_PATH)/config/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf
