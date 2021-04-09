#
# Copyright (C) 2021 TheHitMan7
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

COMMON_PATH := vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)

APK_PREBUILT := vendor/gapps/core/prebuilt.mk

# Common modules
PRODUCT_PACKAGES += \
    ConfigUpdater \
    GoogleCalendarSyncAdapter \
    GoogleContactsSyncAdapter \
    GoogleExtShared \
    GoogleServicesFramework \
    Phonesky

# Android Nougat specific modules
ifeq (25,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    FaceLock \
    GmsCoreSetupPrebuilt \
    GoogleExtServices \
    GoogleLoginService \
    PrebuiltGmsCore
ifeq (arm,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so
endif
ifeq (arm64,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so
endif
endif

# Android Oreo specific modules
ifeq (26,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    FaceLock \
    GmsCoreSetupPrebuilt \
    GoogleExtServices \
    PrebuiltGmsCorePix
ifeq (arm,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so
endif
ifeq (arm64,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so
endif
endif

# Android Oreo specific modules
ifeq (27,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    FaceLock \
    GmsCoreSetupPrebuilt \
    GoogleExtServices \
    PrebuiltGmsCorePix
ifeq (arm,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so
endif
ifeq (arm64,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so
endif
endif

# Android Pie specific modules
ifeq (28,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    FaceLock \
    GoogleExtServices \
    PrebuiltGmsCorePi
ifeq (arm,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so
endif
ifeq (arm64,$(TARGET_ARCH))
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libfrsdk.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfacenet.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfacenet.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfilterpack_facedetect.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfilterpack_facedetect.so \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/lib64/libfrsdk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libfrsdk.so
endif
endif

# Android Q specific modules
ifeq (29,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    GoogleExtServices \
    PrebuiltGmsCoreQt
endif

# Android R specific modules
ifeq (30,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreRvc \
    PlayStoreOverlay
endif

# Android S specific modules
ifeq (31,$(TARGET_SDK_VERSION))
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreSvc \
    PlayStoreOverlay
endif

# Common system files
PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions.xml

PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/permissions/privapp-permissions-atv.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-atv.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-google.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/split-permissions-google.xml

PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/preferred-apps/google.xml

PRODUCT_COPY_FILES += \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_build.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google_exclusives_enable.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_exclusives_enable.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google-rollback-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google-rollback-package-whitelist.xml \
    vendor/gapps/sources/$(TARGET_ARCH)/$(TARGET_SDK_VERSION)/etc/sysconfig/google-staged-installer-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google-staged-installer-whitelist.xml
