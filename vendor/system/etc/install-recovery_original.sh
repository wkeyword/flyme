#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6909952 e6a89112c684dabab8848a208ef2a572549e23f2 4399104 54da1556549802c4889945f14d8a63ddb3d3dd0a
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:6909952:e6a89112c684dabab8848a208ef2a572549e23f2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4399104:54da1556549802c4889945f14d8a63ddb3d3dd0a EMMC:/dev/block/mmcblk0p6 e6a89112c684dabab8848a208ef2a572549e23f2 6909952 54da1556549802c4889945f14d8a63ddb3d3dd0a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
