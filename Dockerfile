FROM	williamyeh/java8
USER	root
COPY	kafka-manager-1.3.2.1.zip /home/default/kafka-manager-1.3.2.1.zip
RUN	apt-get update && apt-get install unzip
RUN	unzip /home/default/kafka-manager-1.3.2.1.zip
RUN	chmod a+x kafka-manager-1.3.2.1/bin/kafka-manager
ADD	start-kafka-manager.sh kafka-manager-1.3.2.1/start-kafka-manager.sh
EXPOSE	8080
LABEL	maintainer "dipayan90@gmail.com"
WORKDIR	kafka-manager-1.3.2.1
RUN	chmod a+x start-kafka-manager.sh
CMD	./start-kafka-manager.sh

