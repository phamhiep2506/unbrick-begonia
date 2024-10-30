#!/usr/bin/env sh

echo "flashing recovery"
mtk.py wo 0x8000 0x4000000 recovery.img
echo "flashing vbmeta"
mtk.py wo 0x5988000 0x800000 vbmeta.img
echo "flashing md1"
mtk.py wo 0x1b580000 0x9600000 md1img.img
echo "flashing spmfw"
mtk.py wo 0x26580000 0x100000 spmfw.img
echo "flashing audio_dsp"
mtk.py wo 0x26680000 0x400000 audio_dsp.img
echo "flashing scp"
mtk.py wo 0x26a80000 0x600000 scp.img
mtk.py wo 0x27080000 0x600000 scp.img
echo "flashing sspm"
mtk.py wo 0x27680000 0x100000 sspm.img
mtk.py wo 0x27780000 0x100000 sspm.img

echo "flashing cam vpus"
mtk.py wo 0x27880000 0xf00000 cam_vpu1.img
mtk.py wo 0x28780000 0xf00000 cam_vpu2.img
mtk.py wo 0x29680000 0xf00000 cam_vpu3.img
echo "flashing gzs"
mtk.py wo 0x2a580000 0x2000000 gz.img
mtk.py wo 0x2c580000 0x2000000 gz.img
echo "flashing lks"
mtk.py wo 0x2e580000 0x200000 lk.img
mtk.py wo 0x2e780000 0x200000 lk.img

echo "flashing boot"
mtk.py wo 0x2e980000 0x4000000 boot.img

echo "flashing logo"
mtk.py wo 0x32980000 0x4000000 logo.bin

echo "flashing dtbo"
mtk.py wo 0x36980000 0x2000000 dtbo.img

echo "flashing tees"
mtk.py wo 0x38980000 0x500000 tee.img
mtk.py wo 0x38e80000 0x500000 tee.img

echo "flashing vendor"
mtk.py wo 0x39800000 0x60000000 vendor.img

echo "flashing system"
mtk.py wo 0x99800000 0xe0000000 system.img
echo "flashing caches"
mtk.py wo 0x179800000 0x1b000000 cache.img

echo "flashing gsort"
mtk.py wo 0x194800000 0x1000000 gsort.img
echo "flashing oems"
mtk.py wo 0x195800000 0x1000000 oem_misc1.img
echo "flashing exaid"
mtk.py wo 0x196800000 0x8000000 exaid.img

echo "flashing cust"
mtk.py wo 0x19e800000 0x34000000 cust.img

echo "flashing userdata"
mtk.py wo 0x1d2800000 0x300000000 userdata.img
