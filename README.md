## unbrick
```sh
cd <path to rom>
export PATH=<path to mtk folder>:$PATH
./unbrick.sh
```

## fix dm-verify
```sh
fastboot flash vbmeta --disable-verity --disable-verification <path to rom>/vbmeta.img
```
