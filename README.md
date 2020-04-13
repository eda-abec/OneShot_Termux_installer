## [OneShot](https://github.com/drygdryg/OneShot) installer for [Termux](https://play.google.com/store/apps/details?id=com.termux)
### Setup
```
pkg install -y wget
wget https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/installer.sh
bash installer.sh
```
### Run
Disable Wi-Fi in the system settings and run:
```
tsudo python oneshot.py -i wlan0 -K
```
