## [OneShot](https://github.com/drygdryg/OneShot) installer for [Termux](https://termux.com/)
### Setup
```
pkg install -y wget
wget https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/installer.sh
bash installer.sh
```
### QR link to installer
![QR](https://raw.githubusercontent.com/eda-abec/OneShot_Termux_installer/master/qr_Termux.gif)
### Run
Disable Wi-Fi in the system settings and run:
```
sudo python oneshot.py -i wlan0 -K
```
