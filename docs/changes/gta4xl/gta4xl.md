## 2022-02-26
- Synced with LineageOS sources

## 2022-02-19
- Synced with LineageOS sources

## 2022-02-12
- Synced with LineageOS sources
- 2022-02-05 system securitypatch
- 2022-01-01 vendor securitypatch

## 2022-02-06
- Fixed GPS on LTE variant

## 2022-02-05
- Synced with LineageOS sources

## 2022-01-29
- Synced with LineageOS sources
- Fixed some issues with adoptable storage

## 2022-01-22
- Synced with LineageOS sources

## 2022-01-15
- Synced with LineageOS sources
- android-12.0.0_r27
- Disallow flashing with TWRP
- Properly fixed wifi issues preventing a potential OOM

## 2022-01-09
- Synced with LineageOS sources
- 2022-01-05 system securitypatch

## 2022-01-01
- Fixed RIL on LTE variant once again

## 2021-12-31
- Synced with LineageOS sources
- Linux 4.14.260
- Fixed lags while using SPen by switching to a different SPen pointer icon

## 2021-12-26
- Synced with LineageOS sources

## 2021-12-19
- Synced with LineageOS sources
- Switched to android-12.0.0_r18 (instead of r16)

## 2021-12-11
- Synced with LineageOS sources
- 2021-12-05 system securitypatch

## 2021-12-04
- Synced with LineageOS sources
- Linux 4.14.256

## 2021-11-27
- Synced with LineageOS sources
- Linux 4.14.255
- Misc small improvements
- microG signature spoofing support

## 2021-11-12
- Synced with LineageOS sources
- Fixed remaining issues for new hardware revisions
- Linux 4.14.254

## 2021-11-06
- 2021-11-05 system securitypatch
- Synced with LineageOS sources

## 2021-11-01
- Synced with LineageOS sources
- Properly support Material You
- Enable adoptable storage
- Enable Dolby audio effect

## 2021-10-22
- Added reserved space for gapps
{% if page.codename == "gta4xl" %}
- Fixed RIL
{% endif %}

## 2021-10-18
- Initial LineageOS 19.0 build

## 2021-10-10
- 2021-10-05 system securitypatch
- 2021-09-01 vendor securitypatch
- Linux 4.14.248
- Improved SPen palm rejection
- Lowered minimum brightness

## 2021-09-11
- 2021-09-05 system securitypatch
- Enable support for wifi display / miracast
- Linux 4.14.244

## 2021-08-15
- 2021-08-05 system securitypatch
- 2021-07-01 vendor securitypatch
- Enabled dolby atmos audio effect
- Linux 4.14.243

## 2021-07-19
- Fixed that E:[liblp]Logical partition metadata has invalid geometry magic
  error when flashing OTAs for example, needs reflashing of stock or at least
  stock super.img to make the error disappear tho
{% if page.codename == "gta4xl" %}
- Fixed really bad bluetooth connection which was caused by missing bluetooth
  firmware
{% endif %}

## 2021-07-12
- Fixed BT SCO
- Fixed USB gadget modes being broken after using MTP

## 2021-07-08
- Do not force enable lockscreen rotation
- Enable bluetooth le peripheral mode
- Linux 4.14.236
- 2021-07-05 system securitypatch

## 2021-06-10
- Fixed DSU
- Linux 4.14.235
- 2021-06-10 system securitypatch
- 2021-05-01 vendor securitypatch
- Switch to camera API1 for Snap
- Disable Wi-Fi Display (it never worked anyways)
- Fixed "Format system partition" in recovery
{% if page.codename == "gta4xl" %}
- Enabled call recording
{% endif %}

## 2021-05-09
- Improved audio quality
- Improved battery life
- 2021-05-05 system securitypatch
- Linux 4.14.232
- Fixed lineage backuptool (for addon.d) on a-only dynamic partitions devices (MindTheGapps should now restore after OTA)

## 2021-04-07
- Linux 4.14.228
- 2021-04-05 system securitypatch

## 2021-03-28
- Initial stable release based on new oneui 3 kernel and blobs

## 2021-03-25
{% if page.codename == "gta4xl" %}
- Fix boot
- Fix RIL
- Fix GPS
{% endif %}

## 2021-03-22
- 2021-03-01 vendor securitypatch
- Initial working build for OneUI 3.x firmware

## 2021-03-05
- Linux 4.14.222
- 2021-03-05 system securitypatch

## 2021-02-07
- Linux 4.14.218
- 2021-02-05 system securitypatch

## 2021-01-23
- Add support for fastbootd
- Add fastcharge HAL (for turning on/off fast charging)
- Add support for OTA updates through Updater app
