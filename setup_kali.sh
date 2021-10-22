#/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y python3 python3-pip python3-venv seclists gobuster seclists curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

wget https://raw.githubusercontent.com/alexloney/kali_setup/main/.vimrc

mkdir tools
cd tools
git clone https://github.com/carlospolop/PEASS-ng
git clone https://github.com/rebootuser/LinEnum
git clone https://github.com/diego-treitos/linux-smart-enumeration
git clone https://github.com/pentestmonkey/unix-privesc-check
git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester
git clone https://github.com/pentestmonkey/windows-privesc-check
wget https://download.sysinternals.com/files/SysinternalsSuite.zip
cd ..

python3 -m pip install --user pipx
python3 -m pipx ensurepath
. ~/.zshrc
pipx install git+https://github.com/Tib3rius/AutoRecon.git
