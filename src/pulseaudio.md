## pulseaudio

#### Summary:

Pulseaudio isn't installed properly in the minimal Fedora Image, 
and it's not immediately obvious how to setup, however installing a 
package fixed it.

#### Problem:

Package `alsa-plugins-pulseaudio` and it's dependencies aren't installed

#### Solution:

```bash
sudo yum install alsa-plugins-pulseaudio # Should resolve alsa and pulseaudio as deps
```

