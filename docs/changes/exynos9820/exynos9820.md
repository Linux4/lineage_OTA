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
