# focalx_ppa
PPA Repo for DragonOS FocalX x86_64 only. Not for DragonOS Pi64 at the moment. Sorry. Hope to fix that some day soon! 


```
curl -s --compressed "https://alphafox02.github.io/focalx_ppa/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/focalx_ppa.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/focalx.list "https://alphafox02.github.io/focalx_ppa/focalx.list"
sudo apt update
```

## Installing Packages
```
sudo apt upgrade gr-gsm
```

## Installing Latest SatDump 
```
sudo apt install --reinstall satdump
```
This is only required until version number changes 

