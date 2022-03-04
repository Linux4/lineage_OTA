{% assign device = site.data.devices[page.codename] %}
[Home]({{ "/" | relative_url }})

# {{ page.title }} ({{ page.codename }})

[Changelog]({{ "/changes/" | append: page.codename | append: ".html" | relative_url }})  
[Update Firmware]({{ "/fw_update/" | append: page.codename | append: ".html" | relative_url }})  

{% assign ota_url = site.lineage_ota_base_url | append: page.codename | append: ".json" %}
{% fetch builds_raw ota_url %}
{% json builds builds_raw %}
{% assign build = builds.response[0] %}
<a href="{{ build.url }}">{{ build.filename }}</a>
<br>
<a href="{{ build.url }}.sha256">sha256</a>
<br>
<a href="{{ build.url | replace:'UNOFFICIAL','recovery' | replace:'.zip','.img' }}">{{ build.filename | replace:'UNOFFICIAL','recovery' | replace:'.zip','.img' }}</a>
<br>
<a href="{{ build.url | replace:'UNOFFICIAL','recovery' | replace:'.zip','.img' }}.sha256">sha256</a>

## Device specifications

<table>
    <tbody>
        <tr>
            <td align="left" colspan="2"><img src="{{ "/images/" | append: page.codename | append: ".png" | relative_url}}" style="max-height: 500px"></td>
        </tr>
        <tr>
            <td align="left">Chipset</td>
            <td align="left">{{ device.chipset }}</td>
        </tr>
        <tr>
            <td align="left">CPU</td>
            <td align="left">{{ device.cpu }}</td>
        </tr>
        <tr>
            <td align="left">GPU</td>
            <td align="left">{{ device.gpu }}</td>
        </tr>
        <tr>
            <td align="left">RAM</td>
            <td align="left">{{ device.ram }}</td>
        </tr>
        <tr>
            <td align="left">Shipped Android Version</td>
            <td align="left">{{ device.shipped_version }}</td>
        </tr>
        <tr>
            <td align="left">Storage</td>
            <td align="left">{{ device.storage }}</td>
        </tr>
{% if device.sim %}
        <tr>
            <td align="left">SIM</td>
            <td align="left">{{ device.sim }}</td>
        </tr>
{% endif %}
{% if device.microsd %}
        <tr>
            <td align="left">MicroSD</td>
            <td align="left">{{ device.microsd }}</td>
        </tr>
{% endif %}
        <tr>
            <td align="left">Battery</td>
            <td align="left">{{ device.battery }}</td>
        </tr>
        <tr>
            <td align="left">Dimensions</td>
            <td align="left">{{ device.dimensions }}</td>
        </tr>
        <tr>
            <td align="left">Display</td>
            <td align="left">{{ device.display }}</td>
        </tr>
{% for rear_camera in device.rear_cameras %}
        <tr>
            <td align="left">Rear Camera</td>
            <td align="left">{{ rear_camera }}</td>
        </tr>
{% endfor %}
{% for front_camera in device.front_cameras %}
        <tr>
            <td align="left">Front Camera</td>
            <td align="left">{{ front_camera }}</td>
        </tr>
{% endfor %}
{% if device.fingerprint %}
        <tr>
            <td align="left">Fingerprint</td>
            <td align="left">{{ device.fingerprint }}</td>
        </tr>
{% endif %}
        <tr>
            <td align="left">Sensors</td>
            <td align="left">{{ device.sensors }}</td>
        </tr>
    </tbody>
</table>
