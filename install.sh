#!/bin/bash
clear
echo "              _           ___                 
             | |         / _ \                
  _   _ _ __ | | ___ __ | | | __      ___ __  
 | | | | '_ \| |/ | '_ \| | | \ \ /\ / | '_ \ 
 | |_| | | | |   <| | | | |_| |\ V  V /| | | |
  \__,_|_| |_|_|\_|_| |_|\___/  \_/\_/ |_| |_|
                                              
                                              

  ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/iprecon" ] ;
then
echo "[◉] A directory iprecon was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/iprecon"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/unkn-0wn/Iprecon.git /usr/share/doc/iprecon;
 echo "#!/bin/bash 
 python /usr/share/doc/iprecon/iprecon.py" '${1+"$@"}' > iprecon;
 chmod +x iprecon;
 sudo cp iprecon /usr/bin/;
 rm iprecon;


if [ -d "/usr/share/doc/iprecon" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]======================================================================[✔]";
  echo "[✔]✔✔✔✔  All is done!! You can execute tool by typing iprecon  !     ✔✔✔✔[✔]"; 
  echo "[✔]======================================================================[✔]";
  echo "";
else
  echo "[✘] Installation failed![✘] ";
  exit
fi
