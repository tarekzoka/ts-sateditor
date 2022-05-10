#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/ts-sateditor/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################
#!/bin/sh
#

wget -O /tmp/tssat.tar.gz "https://onedrive.live.com/download?cid=A76863A4CA51DDF3&resid=A76863A4CA51DDF3%2135616&authkey=ALCQTMi1BQCkDRs"

tar -xzf /tmp/*.tar.gz -C /

wait

rm -r /tmp/tssat.tar.gz



sleep 2;

exit 0


MY_EM='============================================================================================================'
#  Remove Old Plugin  #
echo "   >>>>   Remove old version   "

rm -r /usr/lib/enigma2/python/Plugins/Extensions/TSsatEditor

#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "

cd /tmp 

set -e
#################################    
  wait
     
if python --version 2>&1 | grep -q '^Python 3\.'; then
  wget "$MY_URL/$MY_IPK_PY3"
opkg install --force-overwrite $MY_IPK_PY3
	else 
echo "   Install Plugin please wait "
   wget "$MY_URL/$MY_IPK_PY2"
opkg install --force-overwrite $MY_IPK_PY2
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK_PY2
rm -f /tmp/$MY_IPK_PY3
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>  TAREK_TT " 
sleep 4;                         
echo $MY_EM
###################                                                                                                                  
echo " Your Device Will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
init 3
exit 0













