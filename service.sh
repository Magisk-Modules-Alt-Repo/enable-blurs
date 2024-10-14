#!/system/bin/sh

# late_start service script to disable disable_blurs
# Necessary on Pixel 5 to allow blurs to work

resetprop persist.sys.sf.disable_blurs 0