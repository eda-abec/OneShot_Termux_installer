#!/data/data/com.termux/files/usr/bin/bash
architecture=""
case $(uname -m) in
    armv7*)   architecture="arm" ;;
    aarch64)   architecture="aarch64" ;;
    *)   printf "The architecture of your CPU is not supported. Please build required binaries from the sources: https://github.com/drygdryg/OneShot#termux"; exit
esac
pkg install -y root-repo 
pkg install -y wget tsu python wpa-supplicant iw

wget https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/binaries/$architecture/pixiewps -O $PREFIX/bin/pixiewps
chmod +x $PREFIX/bin/pixiewps

wget https://raw.githubusercontent.com/drygdryg/OneShot/master/oneshot.py
wget https://raw.githubusercontent.com/drygdryg/OneShot/master/vulnwsc.txt

chmod +x ./oneshot.py

printf "########################################\n# All done! Now you can run OneShot with\n#        tsudo python oneshot.py\n########################################\n"
