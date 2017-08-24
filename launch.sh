#!/bin/bash
docker run -d \
	-p 15672:15672 \
	-p 15670:15670 \
	-p 15675:15675 \
	--hostname my-rabbit \
	--name rmq \
	jrlangford/rabbitmq-mqtt
