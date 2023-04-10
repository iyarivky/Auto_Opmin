# Auto_Opmin
Automasi registrasi dan unregistrasi paket Opera Mini XL dengan Termux

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

#### 4. Masuk ke folder `.shortcut` dengan command :

``` 
cd .shortcut
``` 

#### 5. Download scriptnya

```
wget -i https://raw.githubusercontent.com/iyarivky/Auto_Opmin/main/download_sh.txt
```

#### 6. Buat semua scriptnya jadi executable dengan `chmod`

``` 
chmod +x *
``` 

#### 7. Keluar dari Termux

#### 8. Buka pengaturan launcher Android (Biasanya tinggal tekan tombol fisik yang ada di pojok kiri bawah)

#### 9. Tambahkan Widget Termux ke launcher dengan tahan dan drag widgetnya ke tempat yang kamu mau

#### 10. Lalu ada pilihan script yang barusan kamu download, tinggal pilih yang kamu mau

#### 11. Done

### ⚠️Caution⚠️

Script tersebut (terutama script yang menggunakan command `termux-sms-send`) bekerja jika kartu XL kalian ada di SIM1, kalau kartu XL kalian ada di SIM2, ubah dulu nilai parameter `-s` menjadi `1`

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

untuk edit confignya, bisa pakai `micro`, `nano`, `vi` dll

Bingung? tinggal pm @iya_rivvikyn di Telegram
