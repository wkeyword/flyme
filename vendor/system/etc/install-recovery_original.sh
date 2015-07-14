#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6912000 a52086698905158a8635cc0402c3fcf295160c2a 4399104 94d2544def5e0e1fa4354abf2c57f73292def6a4
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:6912000:a52086698905158a8635cc0402c3fcf295160c2a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4399104:94d2544def5e0e1fa4354abf2c57f73292def6a4 EMMC:/dev/block/mmcblk0p6 a52086698905158a8635cc0402c3fcf295160c2a 6912000 94d2544def5e0e1fa4354abf2c57f73292def6a4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
