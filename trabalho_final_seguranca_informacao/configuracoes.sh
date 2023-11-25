  # Define uma política padrão para DROP (bloquear)
  sudo iptables -P INPUT DROP
  sudo iptables -P FORWARD DROP
  sudo iptables -P OUTPUT ACCEPT

  # Permite o tráfego na porta 80 (HTTP)
  sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

  # Permite o tráfego na porta 443 (HTTPS)
  sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

  # Permite o tráfego na porta 22 (SSH)
  sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

#dns
sudo apt update
sudo apt install -y ngin
sudo netstat -putanc
