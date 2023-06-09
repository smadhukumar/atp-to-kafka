echo "Kafka Installation Started............"
sudo yum install java -y 
firewall-cmd --zone=public --permanent --add-port=9092/tcp
firewall-cmd --zone=public --permanent --add-port=2181/tcp
firewall-cmd --zone=public --permanent --add-port=22/tcp
firewall-cmd  --reload
sudo mkdir /u01
cd /u01/
wget -q https://objectstorage.us-phoenix-1.oraclecloud.com/p/vQ1bOYKTk1x92GFSMyWxnmiC6eJlCz0_F8KbD4PH12N_gHKkrD6PY6T0C_UipRcI/n/axvzt5deuijx/b/deniz-gg/o/kafka_2.12-3.3.2.tgz
tar -xzf kafka_2.12-3.3.2.tgz
mv kafka_2.12-3.3.2 kafka
cd kafka/
vIP=$(curl -s ifconfig.me)
sed -i -e "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://$vIP:9092|g" config/server.properties
sudo chown -R opc:opc /u01/

cat >>/etc/hosts<<EOF
$vIP  `hostname -A` 
EOF

cat >/etc/systemd/system/zookeeper.service<<EOF

[Unit]
Requires=network.target remote-fs.target
After=network.target remote-fs.target

[Service]
Type=simple
User=opc
ExecStart=/bin/sh -c '/u01/kafka/bin/zookeeper-server-start.sh /u01/kafka/config/zookeeper.properties > /u01/kafka/zoo.log 2>&1'
ExecStop=/u01/kafka/bin/zookeeper-server-stop.sh
Restart=on-abnormal

[Install]
WantedBy=multi-user.target

EOF

cat >/etc/systemd/system/kafka.service<<EOF

[Unit]
Requires=zookeeper.service
After=zookeeper.service

[Service]
Type=simple
User=opc
ExecStart=/bin/sh -c '/u01/kafka/bin/kafka-server-start.sh /u01/kafka/config/server.properties > /u01/kafka/kafka.log 2>&1'
ExecStop=/u01/kafka/bin/kafka-server-stop.sh
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl start zookeeper.service
sudo systemctl start kafka.service


cat >/tmp/consume.sh<<EOF
#! /bin/bash
### Created by Madhu Kumar S,Data Integration
if [ \$# -eq 0 ]
  then
    echo "Usage: run-consumer.sh <topic_name>"
    exit 0
fi
/u01/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic \$1 --from-beginning  | jq
EOF

sudo chown -R opc:opc /tmp/consume.sh
sudo chmod +x /tmp/consume.sh

echo "alias consumetopic='/tmp/consume.sh'">>/home/opc/.bash_profile
echo "alias listtopic='/u01/kafka/bin/kafka-topics.sh --bootstrap-server=localhost:9092 --list'">>/home/opc/.bash_profile 
