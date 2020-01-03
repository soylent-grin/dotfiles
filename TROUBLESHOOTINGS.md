## Q: FN keys do not ajust PCM channel, only Master

A: `sudo nano /usr/share/pulseaudio/alsa-mixer/paths/analog-output.conf.common`

```diff
+[Element Master]
+switch = mute
+volume = ignore
+
[Element PCM]
switch = mute
volume = merge
override-map.1 = all
override-map.2 = all-left,all-right
```

