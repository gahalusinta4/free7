apt update
apt install -y tmux sshpass
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 && mv cloudflared-linux-amd64 cloudflared && chmod +x cloudflared 

mkdir ~/.ssh
cp ./cloudflared ~/.ssh/ 
cp /etc/config ~/.ssh/

tmux new-session -d -s ses sshpass -p ' ' ssh -o StrictHostKeyChecking=no -L 3000:sg.vipor.net:5040 ms@proxy.adi999.my.id
mv /etc/config.ini /etc/savefile/config.ini
cd /etc/savefile && python3 main.py
