curl https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add -
curl https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt-get update
sudo apt-get install tailscale
sudo tailscale up

