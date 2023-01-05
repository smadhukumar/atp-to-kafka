echo "Kafka Installation Started............"

sudo mkdir /u01
cd /u01/
wget https://downloads.apache.org/kafka/3.3.1/kafka_2.12-3.3.1.tgz
tar -xzf kafka_2.12-3.3.1.tgz
mv kafka_2.12-3.3.1 kafka
cd kafka/
vIP=$(curl -s ifconfig.me)
sed -i -e "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://$vIP:9092|g" config/server.properties
sudo chown -R opc:opc /u01/

cat >/etc/systemd/system/zookeeper.service<<EOF

[Unit]
Requires=network.target remote-fs.target
After=network.target remote-fs.target

[Service]
Type=simple
User=opc
ExecStart=/u01/kafka/bin/zookeeper-server-start.sh /u01/kafka/config/zookeeper.properties
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

cat >>/home/opc/.bash_profile<<EOF
alias consumetopic='/tmp/consume.sh'
alias listtopic='/u01/kafka/bin/kafka-topics.sh --bootstrap-server=localhost:9092 --list'
EOF 

cat >/tmp/consume.sh<<EOF
#! /bin/bash
### Created by Madhu Kumar S,Data Integration


if [ \$# -eq 0 ]
  then
    echo "Usage: run-consumer.sh <topic_name>"
    exit 0
fi

cd /u01/kafka
#./bin/kafka-console-consumer.sh --bootstrap-server=localhost:9092  --topic $1 --from-beginning --property print.key=true --property key.separator='|'


/u01/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic \$1 --from-beginning  | jq
EOF

chown opc:opc /tmp/consume.sh
chmod +x /tmp/consume.sh


