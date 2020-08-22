## [OneShot](https://github.com/drygdryg/OneShot) installer for [Termux](https://termux.com/)
### Setup
```
pkg install -y wget
wget https://raw.githubusercontent.com/eda-abec/OneShot_Termux_installer/master/installer.sh
bash installer.sh
```
### QR code for above URL
![QR](https://raw.githubusercontent.com/eda-abec/OneShot_Termux_installer/master/qr.gif)
### Run
Disable Wi-Fi in the system settings and run:
```
sudo python oneshot.py -i wlan0 -K
```
