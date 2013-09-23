# Check for target product
ifeq (pa_vigor,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# inherit from vigor device
$(call inherit-product, device/htc/vigor/vigor.mk)

# Include CM extras
EXTRA_CM_PACKAGES ?= true

# Override AOSP build properties
PRODUCT_NAME := pa_vigor
PRODUCT_BRAND := HTC
PRODUCT_MODEL := ADR6425LVW
PRODUCT_DEVICE := vigor
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/570011.14:user/release-keys" PRIVATE_BUILD_DESC="4.05.605.14 CL570011 release-keys"

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from proprietary vendor
-include vendor/htc/vigor/BoardConfigVendor.mk

endif