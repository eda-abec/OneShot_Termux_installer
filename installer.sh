#!/data/data/com.termux/files/usr/bin/bash
architecture=""
case $(uname -m) in
    armv7*)   architecture="arm" ;;
    aarch64)   architecture="aarch64" ;;
    *)   printf "The architecture of your CPU is not supported. Please build required binaries from the sources: https://github.com/drygdryg/OneShot#termux"; exit
esac
pkg install -y root-repo 
pkg install -y wget tsu python wpa-supplicant iw

# keep upstream
wget https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/binaries/$architecture/pixiewps -O $PREFIX/bin/pixiewps
chmod +x $PREFIX/bin/pixiewps

wget https://raw.githubusercontent.com/eda-abec/OneShot-Termux/termux/oneshot.py
# keep upstream
wget https://raw.githubusercontent.com/drygdryg/OneShot/master/vulnwsc.txt

chmod +x ./oneshot.py

printf "########################################\n# All done! Now you can run OneShot with\n#        sudo python oneshot.py\n########################################\n"
