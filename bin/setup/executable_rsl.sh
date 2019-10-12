echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc

sudo apt-get update
sudo apt-get install -y resilio-sync

sudo systemctl disable resilio-sync
sudo systemctl stop resilio-sync
systemctl --user enable resilio-sync
systemctl --user start resilio-sync
sudo loginctl enable-linger bjk
