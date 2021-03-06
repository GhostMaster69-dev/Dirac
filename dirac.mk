PRODUCT_SOONG_NAMESPACES += \
    vendor/dirac

DIRAC_VENDOR_PATH := vendor/dirac

PRODUCT_COPY_FILES += \
    $(DIRAC_VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(DIRAC_VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(DIRAC_VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(DIRAC_VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin

BOARD_SEPOLICY_DIRS += $(DIRAC_VENDOR_PATH)/sepolicy

# Dirac
PRODUCT_PACKAGES += \
    XiaomiDirac \

# Props ($PATH_PROP)
TARGET_PRODUCT_PROP += $(DIRAC_VENDOR_PATH)/dirac.prop
