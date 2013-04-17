$(call inherit-product, device/lge/m3s-common/m3s.mk)

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/VM696/VM696-vendor-blobs.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/VM696/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS += device/lge/VM696/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \


PRODUCT_NAME			    := VM696
PRODUCT_DEVICE			    := VM696
PRODUCT_BRAND			    := lge
PRODUCT_MODEL			    := LG-VM696

PRODUCT_RELEASE_NAME		    := LG Optimus Elite
PRODUCT_VERSION_DEVICE_SPECIFIC	    := VM696ZV5
-include vendor/cyanogen/products/common_versions.mk

TARGET_OTA_ASSERT_DEVICE	    := m3s_virgin_us,m3s

PRODUCT_BUILD_PROP_OVERRIDES +=								\
	TARGET_PRODUCT=m3s_virgin_us								\
	PRODUCT_DEVICE=m3s									\
	TARGET_BUILD_VARIANT=user								\
	BUILD_ID=ZV5.GWK74									\
	BUILD_DISPLAY_ID=ZV5.GWK74								\
	BUILD_NUMBER=47E5087D									\
	BUILD_VERSION_TAGS=release-keys								\
	PRODUCT_NAME=m3s_virgin_us								\
	TARGET_BOOTLOADER_BOARD_NAME=lge_m3s							\
	PRODUCT_MANUFACTURER=LGE								\
	PRODUCT_DEFAULT_LANGUAGE=en								\
	PRODUCT_DEFAULT_REGION=US								\
	BUILD_FINGERPRINT="lge/m3s_virgin_us/m3s:2.3.7/ZV5.GWK74/47E5087D:user/release-keys"	\
	PRIVATE_BUILD_DESC="m3s_virgin_us-user 2.3.7 ZV5.GWK74 47E5087D release-keys"
