#!/bin/bash
######################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################

cat /etc/init.d/lpsvc |grep export
export LD_LIBRARY_PATH=/var/lib/.lpagnt/lib/libcurl/lib:/var/lib/.lpagnt/lib/openssl/lib:/var/lib/.lpagnt/lib/sqlite3secure:/var/lib/.lpagnt/lib/magickWand/lib:${LD_LIBRARY_PATH}
cd -
cd /var/lib/.lpagnt/.services/
reset
ldd * |grep found
lsb_release -a
apt-cache search libjpeg*
apt-get isntall libjpeg62
apt-get install libjpeg62
ps -ef |grep lp
service lpsc stop
service lpsvc stop
service lpupdtr stop
ps -ef |grep lp
ldd * |grep found
apt-get install libnetfilter-queue1
ldd * |grep found
locate libgnutls*
locate libgnutls
cd /usr/lib/x86_64-linux-gnu/
ls -l libgnu*
ln -sf libgnutls.so.30.14.10 libgnutls.so.26
cd -
ldd * |grep found
locate libmtp
cd -
ln -sf  libmtp.so.9.3.0 libmtpso.8
cd -
ldd * |grep found
cd -
ln -sf  libmtp.so.9.3.0 libmtp.so.8
ls -l libmtp*
rm -rf libmtpso.8
cd -
ldd * |grep found
locate libgcrypt
cd /lib/x86_64-linux-gnu/
ls -l libcry*
ls -l libgcry*
ln -sf  libgcrypt.so.20.2.1 libgcrypt.so.11
cd -
ldd * |grep found
apt-cache search libpng*
add-apt-repository ppa:linuxprising/libpng12
sudo add-apt-repository ppa:linuxprising/libpng12
vi /etc/apt/sources.list
apt-get update
apt-cache search libpng*
apt-get install libpng12-0
cd -
ldd * |grep found
service lpsc start
ps -ef |greplp
ps -ef |grep lp
vi /etc/apt/sources.list
