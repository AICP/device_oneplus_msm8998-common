#!/system/bin/sh

if [ ! -f /vendor/lib/soundfx/libjamesdsp.so ]; then
	mount -o remount,rw /vendor
	cp /system/lib/soundfx/libjamesdsp.so /vendor/lib/soundfx/libjamesdsp.so
	chmod 644 /vendor/lib/soundfx/libjamesdsp.so
	mount -o remount,ro /vendor
fi
