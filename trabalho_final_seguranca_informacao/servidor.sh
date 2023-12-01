sudo apt-get update

sudo apt-get install -y isc-dhcp-server

cd /vm1

sudo cp dhcpd.conf /etc/dhcp/

# Reinicia o servidor DHCP
sudo systemctl restart isc-dhcp-server

# Instala o servidor DNS (bind9)
sudo apt-get install -y bind9

sudo cp named.conf.options /etc/bind/

# Reinicia o servidor DNS
sudo systemctl restart bind9

# Instala o firewall (ufw)
sudo apt-get install -y ufw

# Configuração do firewall
sudo ufw allow 22      # SSH
sudo ufw allow 53      # DNS
sudo ufw allow 67/udp  # DHCP 
sudo ufw allow Bind9


sudo ufw --force enable

#instala o fail2ban e determina o ban de 30s a cada 2 erros de ssh
sudo apt install fail2ban -y
sudo cp jail.conf /etc/fail2ban/
sudo systemctl restart fail2ban

#determina atualizações periódicas mensais
cp update.sh ../etc/cron.monthly/ #conforme as instruções no arquivo update.sh
