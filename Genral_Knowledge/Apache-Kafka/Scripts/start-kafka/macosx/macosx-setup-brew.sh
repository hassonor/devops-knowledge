#################################
#### DOWNLOAD KAFKA BINARIES ####
#################################

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Apache-Kafka (will install Java if needed)
brew install kafka

# Try out a Apache-Kafka command (no .sh needed)
kafka-topics

# Homebrew will install Apache-Kafka under /usr/local/Cellar, but the files will be linked into other directories:
#  Binaries and Scripts will be in /usr/local/bin
#  Apache-Kafka configurations will be in /usr/local/etc/kafka
#  Zookeeper configuration will be in /usr/local/etc/zookeeper
#  The log.dirs config (the location for Apache-Kafka data) will be set to /usr/local/var/lib/kafka-logs

# Start Zookeeper
/usr/local/bin/zookeeper-server-start /usr/local/etc/zookeeper/zoo.cfg

# Start Apache-Kafka
/usr/local/bin/kafka-server-start /usr/local/etc/kafka/server.properties