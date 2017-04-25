# Virtualbox Installation

## Debian

```shell
# Run as root
# Add sources
echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" >> /etc/apt/sources.list.d/virtualbox.list
# Add key
curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
# Install
sudo apt-get update
sudo apt-get install virtualbox-5.1
```
