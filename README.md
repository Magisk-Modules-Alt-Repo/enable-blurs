# Enable Blurs for Magisk
This module enables support for window-level blurs on a wide range of devices.

After installing, be sure to go to Settings app -> System -> Developer Options -> Enable `Allow window-level blurs` under the `Hardware accelerated rendering` subheading.

Just installing this module isn't enough to get blur/glass effects on your system; system UI components need to specifically be programmed to take advantage of them. One way of achieving this is by installing mods like [ClearLineage](https://programminghoch10.github.io/ClearLineage/) (download via [Telegram](https://t.me/clearlineage)), or [Iconify](https://github.com/Mahmud0808/Iconify).

My module is similar to [other modules](https://github.com/hacker1024/blur-enabler-magisk), but includes a `late_start` service to modify certain system props just after boot to expand compatibility to a wider range of devices (including my Pixel 5) which don't work with just the standard read-only props mods.

The Action button simply re-runs this `late_start` service and restarts the surfaceflinger to ensure it takes effect.

## Modified Props

	# Default boot stage (system.prop)
	ro.sf.blurs_are_expensive (1)
	ro.surface_flinger.supports_background_blur (1)

	# late_start service boot stage
	persist.sys.sf.disable_blurs (0)