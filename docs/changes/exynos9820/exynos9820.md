## 2024-03-30
- 2024-03-05 system securitypatch
- Linux 4.14.339
- Synced with LineageOS sources
- Improved GPU performance
- Various smaller device-side improvements

## 2024-02-11
- 2024-02-05 system securitypatch
- Synced with LineageOS sources

## 2024-01-27
- 2024-01-05 system securitypatch
- Linux 4.14.336
- Synced with LineageOS sources

## 2024-01-06
WARNING: This update requires a factory reset and you must install the latest recovery before attempting to sideload it.

- 2023-12-05 system securitypatch
- Fixed microphone outside of calls
- Switched to f2fs with fscrypt v2 for /data, generally modernized encryption setup
- Retrofitted dynamic partitions
- Brought back screen resolution switch in settings
- Fixed sending SMS

## 2023-11-12
- Fixed bluetooth

## 2023-11-11
- Initial build based on Android 14

## 2023-02-18
- Synced with LineageOS sources
- 2023-02-05 system securitypatch
- 2023-01-01 vendor securitypatch

## 2023-01-19
- Synced with LineageOS sources
- Added back mistakenly removed signature spoofing support

## 2023-01-15
- Synced with LineageOS sources
- 2023-01-05 system securitypatch

## 2022-12-17
- Synced with LineageOS sources
- 2022-12-05 system securitypatch

## 2022-12-04
- Synced with LineageOS sources
- Ship HVI4 firmware for easy flashing on devices running HVJ5

## 2022-11-19
- Synced with LineageOS sources
- Fixed trust USB restriction issues
- 2022-11-05 system securitypatch

## 2022-10-29
- Synced with LineageOS sources
- Linux 4.14.296

## 2022-10-22
- Synced with LineageOS sources
- Ship firmware

## 2022-10-07
- Synced with LineageOS sources
- 2022-10-05 system securitypatch

## 2022-10-01
- Synced with LineageOS sources
- EROFS for /vendor

## 2022-09-25
- Synced with LineageOS sources

## 2022-09-18
- Initial LineageOS 20.0 OTA
- Synced with LineageOS sources
- Fixed RIL signal level not being updated
- Fixed AOD appearing to be frozen

## 2022-07-30
- 2022-07-01 vendor securitypatch

## 2022-07-16
- Synced with LineageOS sources

## 2022-07-10
- Added back mistakenly removed signature spoofing support

## 2022-07-09
- Synced with LineageOS sources
- 2022-07-05 system securitypatch

## 2022-06-12
- Synced with LineageOS sources
- 2022-06-05 system securitypatch

## 2022-06-04
- Synced with LineageOS sources

## 2022-05-28
- Synced with LineageOS sources

## 2022-05-21
- Synced with LineageOS sources
- 2022-05-01 vendor securitypatch
- Linux 4.14.280

## 2022-05-14
- Synced with LineageOS sources
- Fixed external display output

## 2022-05-07
- Drop broken support for screen-off OK google (should allow screen-on one to work)
- 2022-05-05 system securitypatch

## 2022-04-30
- Synced with LineageOS sources

## 2022-04-23
- Synced with LineageOS sources
- Removed AudioFX as it interferes with Dolby Atmos
- Added support for DSU
- BT SCO fixed in a treble compliant way

## 2022-04-16
- Enabled AOD animation
- Fixed DT2W on AOD
- Synced with LineageOS sources
{% if page.codename == "d1" or page.codename == "d2s" or page.codename == "d2x" %}
- Added back mistakenly removed SPenActions
{% endif %}

## 2022-04-09
- Synced with LineageOS sources
- 2022-04-05 system securitypatch

## 2022-04-02
- Synced with LineageOS sources
- Removed fake VoLTE icon (look at the build date :P)

## 2022-04-01
- Synced with LineageOS sources
- 2022-03-01 vendor securitypatch

## 2022-03-25
- Synced with LineageOS sources
- Added SamsungDAP (Dolby Atmos in Settings)

## 2022-03-18
- Synced with LineageOS sources
- LineageOS 19.1 (this also means automatic OTA will be prohibited and you have to manually flash and reflash all 3rd party addons)
{% if page.codename == "beyond0lte" %}
- Reverted a google commit that broke side fps setup
{% endif %}

## 2022-03-12
- Synced with LineageOS sources
- 2022-03-05 securitypatch (android-12.1.0_r1)

## 2022-03-05
- Synced with LineageOS sources

## 2022-02-26
- Synced with LineageOS sources
- Improved Bluetooth audio quality

## 2022-02-19
- Synced with LineageOS sources
- Require Android 12 Firmware
- 2022-02-01 vendor securitypatch
{% if page.codename == "d1" or page.codename == "d2s" or page.codename == "d2x" %}
- Add experimental support for S Pen Bluetooth gestures (see Settings -> System -> Gestures)
{% endif %}

## 2022-02-12
- Synced with LineageOS sources
- 2022-02-05 system securitypatch

## 2022-02-06
- Removed mistakenly added HWC2 night light option

## 2022-02-05
- Synced with LineageOS sources
- 2022-01-01 vendor securitypatch

## 2022-01-29
- Synced with LineageOS sources
- Fixed some issues with adoptable storage

## 2022-01-22
- Synced with LineageOS sources

## 2022-01-15
- Synced with LineageOS sources
- android-12.0.0_r27
- Disallow flashing with TWRP

## 2022-01-09
- Synced with LineageOS sources
- 2022-01-05 system securitypatch
- 2021-12-01 vendor securitypatch
- Switched to OneUI 4 blobs and kernel

## 2022-01-01
- Fixed RIL on single SIM models (beyondx/d2x), this should also fix RIL for korean single SIM variants (SM-G97XN, SM-N97XN)

## 2021-12-31
- Synced with LineageOS sources
- Linux 4.14.260

## 2021-12-26
- Synced with LineageOS sources

## 2021-12-19
- Synced with LineageOS sources
- Switched to android-12.0.0_r18 (instead of r16)

## 2021-12-11
- Synced with LineageOS sources
- Linux 4.14.256 (android-4.14-q)
- 2021-12-05 system securitypatch
- Fix mac randomization not always applying the new MAC

## 2021-12-04
- Synced with LineageOS sources
- Improve single/dual SIM detection, this should allow using RIL on korean single SIM variants (SM-G97XN, SM-N97XN)
{% if page.codename == "beyond0lte" %}
- Add support for fingerprint gestures
{% endif %}

## 2021-11-27
- Synced with LineageOS sources
- Fixed an issue where google maps would switch screen resolution to 720p
- Misc small improvements
- microG signature spoofing support

## 2021-11-12
- Synced with LineageOS sources

## 2021-11-06
- 2021-11-05 system securitypatch
- Linux 4.14.253
- Synced with LineageOS sources
- Fixed BT incall audio issues

## 2021-11-01
- 2021-10-01 vendor securitypatch
- Synced with LineageOS sources
- Properly support Material You
- Enable adoptable storage
- Enable Dolby audio effect

## 2021-10-17
- Lineage Recovery
- Fixed Updater
- Fixed exFAT

{% if page.codename == "d1" or page.codename == "d2s" or page.codename == "d2x" %}
## 2021-10-15
- Fixed audio
{% endif %}

## 2021-10-14
- Initial LineageOS 19.0 build

## 2021-10-10
- 2021-10-05 system securitypatch
- 2021-09-01 vendor securitypatch
- Linux 4.14.248
- Include patched camera libraries for RAW support on all lenses

## 2021-09-11
- 2021-09-05 system securitypatch
- 2021-08-01 vendor securitypatch
- Enable support for wifi display / miracast
- Linux 4.14.245

## 2021-08-15
- 2021-08-05 system securitypatch
- Enabled dt2w on full screen
- Enabled dolby audio effect
- Linux 4.14.241

## 2021-07-19
- Reverted front camera back to normal (6.50MP+10MP, 6.50MP one being used by default in apps)
  because of issues in some apps

## 2021-07-08
- 2021-07-05 system securitypatch
- 2021-07-01 vendor securitypatch
- Linux 4.14.238
- Place volume panel on the left by default
{% if page.codename == "d2s" or page.codename == "d2x" or page.codename == "beyondx" %}
- Fixed ToF camera
{% if page.codename != "beyondx" %}
- Fixed SPen in landscape orientation
- Replaced SPen pointer with stock one
{% endif %}
{% endif %}

## 2021-06-11
- 2021-06-05 system securitypatch
- 2021-06-01 vendor securitypatch
- Linux 4.14.235
- Fixed WPA3 (SAE)
- Enabled call recording
{% if page.codename == "beyondx" %}
- ToF camera should now be available
{% endif %}

## 2021-05-21
- Fix external display output
- Improve autobrightness even more by using values from star-common tree
- Enable mac randomization
- Switch to camera API1 for Snap
- 2021-05-01 vendor securitypatch

## 2021-05-10
- Bring back some livedisplay modes
- Improved battery life
- 2021-05-05 system securitypatch
- Linux 4.14.232
{% if page.codename == "beyondx" %}
- Fixed RIL
- Fixed front camera in lineage snap
{% endif %}


## 2021-04-22
- Improved autobrightness
- Fix bluetooth phone calls
- Improved audio quality
- Fix Widevine L1 (Netflix)
- Disable livedisplay by default
- Remove unsupported livedisplay modes
- Fix bixby key long press and wakeup behavior (now called "menu button" instead of "search button" in settings)
- Upstreamed kernel to Linux 4.14.230

## 2021-04-15
{% if page.codename == "beyond0lte" %}
- Fixed fingerprint sensor
{% endif %}
- Fixed installing of OpenGApps and MindTheGapps, requires flashing of latest recovery to work

## 2021-04-14
- Fixed vibrator intensity control
- Fixed autobrightness behaving weird sometimes
- Fixed bad microphone audio quality for some apps
- Fixed USB-C audio

## 2021-04-13
{% if page.codename != "beyond1lte" %}
- Fixed booting issues caused by broken cutout overlay
{% endif %}
- 2021-04-01 vendor securitypatch

## 2021-04-12
- Initial public release
