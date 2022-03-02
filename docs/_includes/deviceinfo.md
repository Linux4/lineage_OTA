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
            <td align="left">{{ page.chipset }}</td>
        </tr>
        <tr>
            <td align="left">CPU</td>
            <td align="left">{{ page.cpu }}</td>
        </tr>
        <tr>
            <td align="left">GPU</td>
            <td align="left">{{ page.gpu }}</td>
        </tr>
        <tr>
            <td align="left">RAM</td>
            <td align="left">{{ page.ram }}</td>
        </tr>
        <tr>
            <td align="left">Shipped Android Version</td>
            <td align="left">{{ page.shipped_version }}</td>
        </tr>
        <tr>
            <td align="left">Storage</td>
            <td align="left">{{ page.storage }}</td>
        </tr>
{% if page.sim %}
        <tr>
            <td align="left">SIM</td>
            <td align="left">{{ page.sim }}</td>
        </tr>
{% endif %}
{% if page.microsd %}
        <tr>
            <td align="left">MicroSD</td>
            <td align="left">{{ page.microsd }}</td>
        </tr>
{% endif %}
        <tr>
            <td align="left">Battery</td>
            <td align="left">{{ page.battery }}</td>
        </tr>
        <tr>
            <td align="left">Dimensions</td>
            <td align="left">{{ page.dimensions }}</td>
        </tr>
        <tr>
            <td align="left">Display</td>
            <td align="left">{{ page.display }}</td>
        </tr>
{% assign rear_cameras = page.rear_cameras | split: ";" %}
{% for rear_camera in rear_cameras %}
        <tr>
            <td align="left">Rear Camera</td>
            <td align="left">{{ rear_camera }}</td>
        </tr>
{% endfor %}
{% assign front_cameras = page.front_cameras | split: ";" %}
{% for front_camera in front_cameras %}
        <tr>
            <td align="left">Front Camera</td>
            <td align="left">{{ front_camera }}</td>
        </tr>
{% endfor %}
{% if page.fingerprint %}
        <tr>
            <td align="left">Fingerprint</td>
            <td align="left">{{ page.fingerprint }}</td>
        </tr>
{% endif %}
        <tr>
            <td align="left">Sensors</td>
            <td align="left">{{ page.sensors }}</td>
        </tr>
    </tbody>
</table>
