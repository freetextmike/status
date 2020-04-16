cd ~
sudo apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt-get install nodejs
sudo apt install git
git clone https://github.com/AuspeXeu/openvpn-status.git
git clone https://github.com/freetextmike/status.git

cp ~/status/cfg.json ~/openvpn-status/
cd openvpn-status
npm install sqlite3 --unsafe-per
npm install
npm run build
node server.js
