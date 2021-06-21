[Home]({{ "/" | relative_url }})

# {{ page.title }} ({{ page.codename }})

{% assign models = page.models | split: ";" %}
{% for model in models %}
<h2>Download latest Firmware for {{ model }}</h2>
<a id="fw-download-{{ model }}" href="">No firmware available</a>
<br>
<a id="fw-download-sha256-{{ model }}" href="" style="display: none;">sha256</a>
<br>
<h4>Installing with Heimdall</h4>
<p id="fw-install-heimdall-{{ model }}">
Extract %fwname% and run<br>
<code>%heimdallcmd%</code><br>
in the directory you extracted it to.
</p>
<h4>Installing with Odin</h4>
<p id="fw-install-odin-{{ model }}">
Flash %fwname% in BL slot.
</p>
<p>
<b style="color: red">It is recommended that you reflash latest LineageOS after updating firmware, otherwise
you may run into issues and in worst case your device will not boot anymore.</b>
</p>

<script type="text/javascript">
let fwurl = "{{ site.firmware-update-raw | append: model }}";

fetch (fwurl).then(response => response.text()).then((text) => {
    let pda = text.split("/")[0];
    let fwName = "firmware-{{ model }}-" + pda;
    let fwDownload = document.getElementById("fw-download-{{ model }}");
    fwDownload.href = "{{ site.firmware-update-download }}" + pda + "/" + fwName + ".tar";
    fwDownload.innerHTML = "Download firmware " + pda;

    let fwDownloadSHA256 = document.getElementById("fw-download-sha256-{{ model }}");
    fwDownloadSHA256.href = fwDownload.href + ".sha256";
    fwDownloadSHA256.style.display = "inline-block";

    let releaseUrl = "{{ site.firmware-update-releases }}" + pda;

    fetch(releaseUrl).then(response => response.json()).then((json) => {
        let fwInstallHeimdall = document.getElementById("fw-install-heimdall-{{ model }}");
        fwInstallHeimdall.innerHTML = fwInstallHeimdall.innerHTML.replace("%fwname%", fwName + ".tar").replace("%heimdallcmd%", json.body);

        let fwInstallOdin = document.getElementById("fw-install-odin-{{ model }}");
        fwInstallOdin.innerHTML = fwInstallOdin.innerHTML.replace("%fwname%", fwName + ".tar");
    });
});
</script>
{% endfor %}
