FROM rabbitmq:3-management
MAINTAINER jrobinlangford@gmail.com

COPY rabbitmq.config /etc/rabbitmq/rabbitmq.config
RUN rabbitmq-plugins enable --offline \
	rabbitmq_mqtt rabbitmq_web_mqtt \
	rabbitmq_web_mqtt_examples
EXPOSE 8883 1883 15675 15670
CMD ["rabbitmq-server"]
