#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:781e0da8fb2286ae443f56f49145168551798673; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:100663296:d006b98ba39a7f9cdc8978e19297307f45fea24d EMMC:/dev/block/bootdevice/by-name/recovery 781e0da8fb2286ae443f56f49145168551798673 67108864 d006b98ba39a7f9cdc8978e19297307f45fea24d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
