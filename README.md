## BiTGApps AOSP Based Build System

## Disclaimer
1. **Use this at your own risk.** Cyanogenmod received a cease and desist letter from Google when they included Google Apps in their ROM. See: [A Note on Google Apps for Android](http://android-developers.blogspot.com/2009/09/note-on-google-apps-for-android.html)
2. **This project is in no way affiliated with, sponsored by, or related to Google.**

## Getting started
**1. Download And Install Git LFS**

Download git lfs:

```
https://git-lfs.github.com
```

Install git lfs:

```
tar -xz -f git-lfs-linux-amd64-v2.13.2.tar.gz -C out
cd out
sudo ./install.sh
```

**2. Clone Build System**

```
git clone https://github.com/BiTGApps/aosp-build.git vendor/gapps
```

**3. Check Build System**

Check size of cloned sources using below command:

```
du -h -s vendor/gapps/sources
```

It should be 2.0GB, if not then you need to integrate `git lfs` inside the source by using below commands:

```
cd vendor/gapps
git lfs install --local
git lfs pull
```

**4. Include Targets And GApps Make File**

You need to add targets which declares architecture and platform SDK version. As we are unable to retrieve targets from existing variables `TARGET_ARCH` and `PLATFORM_SDK_VERSION`.

In `device/manufacturer/product/device.mk` file add targets like this:
```
TARGET_ARCH := arm
TARGET_SDK_VERSION := 30
```
After adding targets, The `gapps.mk` file will make the Android build system build the necessary packages, and include the necessary files.

Just below targets, declare gapps makefile:
```
$(call inherit-product, vendor/gapps/gapps.mk)
```

**5. Build Android**

If you do not declare targets, it won't build at all and exit installation with error message. Apart from this no extra input required.

**6. PlayStoreOverlay**

Prebuilt PlayStoreOverlay APK taken from OpenGApps. [Source](https://gitlab.opengapps.org/opengapps/all/-/commit/36c9eb21f93d2649cc5dcc29d308fb244859f533) with build instructions.

## License

The BiTGApps Project itself is licensed under the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.txt).
