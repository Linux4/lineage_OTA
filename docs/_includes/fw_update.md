{% assign device = site.data.devices[page.codename] %}
[Home]({{ "/" | relative_url }})

# {{ page.title }} ({{ page.codename }})

{% for model in device.models %}
<h2>Download latest Firmware for {{ model }}</h2>
{% if device.fw_require_lineage_version %}
<p>
<b style="color: red">This firmware can only be used with LineageOS {{ device.fw_require_lineage_version }}!</b>
</p>
{% endif %}
{% assign fw_url = site.firmware-update-raw | append: model %}
{% fetch fwversion fw_url %}
{% assign versions = fwversion | split: '/' %}
{% assign pda = versions[0] %}
{% assign fwname = "firmware-" | append: model | append: "-" | append: pda | append: ".tar" %}
{% assign release_url = site.firmware-update-releases | append: pda %}
{% fetch fwinfo release_url %}
{% json fwjson fwinfo %}
<a href="{{ site.firmware-update-download }}/{{ pda }}/{{ fwname }}">Download firmware {{ pda }}</a>
<br>
<a href="{{ site.firmware-update-download }}/{{ pda }}/{{ fwname }}.sha256">sha256</a>
<br>
<h4>Installing with Heimdall</h4>
<p>
Extract {{ fwname }} and run<br>
<code>{{ fwjson.body }}</code><br>
in the directory you extracted it to.
</p>
<h4>Installing with Odin</h4>
<p>
Flash {{ fwname }} in BL slot.
</p>
{% endfor %}
