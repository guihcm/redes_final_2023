apt update
apt install net-tools
route del default gw 10.0.2.2
route add default gw 192.168.56.10

cd /vm

#determina atualizações periódicas mensais
cp update.sh ../etc/cron.monthly/ #conforme as instruções no arquivo update.sh