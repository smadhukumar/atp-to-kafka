sudo yum install java -y 
sudo mkdir /u01
sudo chown -R opc:opc /u01/
cd /u01/ 
wget https://downloads.apache.org/kafka/3.3.1/kafka_2.12-3.3.1.tgz
tar -xzf kafka_2.12-3.3.1.tgz
mv kafka_2.12-3.3.1 kafka
cd kafka/
vIP=$(hostname -I | awk '{print $1}')
sed -i -e "s|#advertised.listeners=PLAINTEXT://your.host.name:9092|advertised.listeners=PLAINTEXT://$vIP:9092|g" config/server.properties
nohup  bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 30
nohup  /u01/kafka/bin/kafka-server-start.sh  /u01/kafka/config/server.properties & 
