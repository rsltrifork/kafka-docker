KAFKA_PATH=kafka_2.10-0.8.2.0
echo "starting zk"
$KAFKA_PATH/bin/zookeeper-server-start.sh $KAFKA_PATH/config/zookeeper.properties > /logs/zk.consolelog &
sleep 3
echo "starting kafka"
$KAFKA_PATH/bin/kafka-server-start.sh $KAFKA_PATH/config/server.properties > /logs/kafka.consolelog
