# kali_setup

## Change default password
The default password of "kali" would be insecure, if performing any actions on a shared 
enviroment where someone may be able to SSH back to us, they would likely try the default 
username/password. So changing that will help protect us.
```
passwd
```

## Useful .zshrc changes
Add the following to the ~/.zshrc file for useful aliases
```
alias sautorecon='sudo $(which autorecon)'
```

## Passwordless sudo
Add the following to the sudoers file with `sudo visudo` to enable passwordless sudo
```
kali    ALL=(ALL) NOPASSWD: ALL
```

## Update default editor
I dislike the nano editor, so use the following command to update the default editor to
vim.
```
sudo select-editor
```

## Useful firefox extensions
The following Firefox extensions are useful for various network based recon
* https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/
* https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/

## Automated config
Once the above has been set up, use the following to automatically install and configure things
that I found easy enough to automate.
```
cd ~
wget https://raw.githubusercontent.com/alexloney/kali_setup/main/setup_kali.sh
chmod +x setup_kali.sh
./setup_kali.sh
```

