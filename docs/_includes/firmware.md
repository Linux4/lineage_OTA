{% assign fw_url = site.firmware-update-raw | append: page.model %}
{% fetch fwversion fw_url %}
{% assign versions = fwversion | split: '/' %}
{% assign pda = versions[0] %}
{% assign fwname = "firmware-" | append: page.model | append: "-" | append: pda | append: ".tar" %}
{% assign release_url = site.firmware-update-releases | append: pda %}
{% fetch fwinfo release_url %}
{% json fwjson fwinfo %}
<meta http-equiv="Refresh" content="0; url={{ site.firmware-update-download }}/{{ pda }}/{{ fwname }}" />
