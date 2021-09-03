sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

#sudo iptables -A FORWARD -o enp4s0 -i enxb8d982017b80 -s 192.168.7.0/24 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -A FORWARD -o enp4s0 -i enx28c610a08341 -s 192.168.7.0/24 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -t nat -F POSTROUTING
sudo iptables -t nat -A POSTROUTING -o enp4s0 -j MASQUERADE


#sudo iptables -t nat -A POSTROUTING -o enp4s0 -j MASQUERADE
#sudo iptables -A FORWARD -i enp4s0 -o enxb8d982017b80 -m state --state RELATED,ESTABLISHED -j ACCEPT

#sudo iptables -A FORWARD -o enp4s0 -i enxb8d982017b80 -m state --state RELATED,ESTABLISHED -j ACCEPT

#sudo iptables -A FORWARD -i enxb8d982017b80 -o enp4s0 -j ACCEPT

#sudo iptables -I FORWARD -o enp4s0 -s 192.168.7.0/16 -j ACCEPT
#sudo iptables -I INPUT -s 192.168.7.0/16 -j ACCEPT

#sudo bash -c 'iptables-save > /etc/iptables/rules.v4'
#sudo bash -c 'iptables-restore < /etc/iptables/rules.v4'

