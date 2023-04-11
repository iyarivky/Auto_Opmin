# Auto Opmin
Automasi registrasi dan unregistrasi paket Opera Mini XL dengan Termux

Script terdiri dari:
- `REG_Opmin.sh`\
untuk dial registrasi paket Opera Mini ke `*808*363*3*1#` via command `termux-telephony-call`

- `UNREG_Opmin.sh`\
untuk kirim SMS unregistrasi (UNREG) paket Opera Mini ke `99722` via command `termux-sms-send`

- `UNREG_dan_REG_Opmin.sh`\
untuk melakukan unregistrasi dan registrasi paket Opera Mini secara bersamaan dengan jeda waktu selama 2 detik

- `Perpanjang_Opmin.sh`\
untuk dial perpanjangan paket Opera Mini ke `*808*363*4*3*1#` via command `termux-telephony-call`

## Tutorial


#### 1. Install Termux, Termux:API, dan Termux:Widget

https://f-droid.org/packages/com.termux/

https://f-droid.org/en/packages/com.termux.api/

https://f-droid.org/packages/com.termux.widget/

#### 2. Masuk ke Termux

#### 3. Install package `termux-api`

``` 
pkg install termux-api 
```

#### 4. Masuk ke folder `.shortcuts` dengan command :

``` 
cd .shortcuts
``` 
⚠️Caution⚠️

Jika muncul peringatan `cd .shortcuts: No such file or directory`, lakukan langkah ke-8 sampai ke-9 agar "memancing" folder `.shortcuts` dibuat

#### 5. Download scriptnya

```
wget -i https://raw.githubusercontent.com/iyarivky/Auto_Opmin/main/download_sh.txt
```

#### 6. Buat semua scriptnya jadi executable dengan `chmod`

``` 
chmod +x *
``` 

#### 7. Keluar dari Termux

#### 8. Buka pengaturan launcher Android (Biasanya tinggal tahan tombol fisik yang ada di pojok kiri bawah), lalu pilih "Widget"


<p align="center"><img src="https://user-images.githubusercontent.com/101973571/230915456-1eb61455-2f77-40ee-bebe-1f99c3620ab0.png" width="50%"><p>

#### 9. Tambahkan "Termux shorcut" ke launcher dengan tahan dan drag widgetnya ke tempat yang kamu mau

<p align="center"><img src="https://user-images.githubusercontent.com/101973571/230916213-e6ad66a1-8219-4c7a-a450-0a8337afa5a3.png" width="50%"><p>

#### 10. Lalu ada pilihan script yang barusan kamu download, tinggal pilih yang kamu mau

<p align="center"><img src="https://user-images.githubusercontent.com/101973571/230916356-a3bac685-542e-436a-b766-bf8177b5752b.png" width="50%"><p>

#### 11. Done 👍

### ⚠️Caution⚠️

Untuk **Dual SIM** , script tersebut (terutama script yang menggunakan command `termux-sms-send`) bekerja jika kartu XL kalian ada di SIM1, kalau kartu XL kalian ada di SIM2, ubah dulu nilai parameter `-s` menjadi `1`

contoh untuk script UNREG_Opmin.sh
```
#!/bin/sh

termux-sms-send -n 99722 -s 0 UNREG
echo "SEND UNREG"
```
ubah menjadi
```
#!/bin/sh

termux-sms-send -n 99722 -s 1 UNREG
echo "SEND UNREG"
```
Untuk **Single SIM**, hilangkan saja parameter dan value `-s` saja menjadi : 
```
#!/bin/sh

termux-sms-send -n 99722 UNREG
echo "SEND UNREG"
```
untuk edit scriptnya, bisa pakai `micro`, `nano`, `vi` dll

Bingung? tinggal pm [@iya_rivvikyn](https://t.me/iya_rivvikyn) di Telegram

![bingung bang?](https://c.tenor.com/M5Qi18Me3VMAAAAd/bingung.gif)
