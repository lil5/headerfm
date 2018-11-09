#!/bin/bash

if [ "$(docker ps -a | grep headerfm-app)" ]; then
	docker stop headerfm-app
	docker rm headerfm-app
fi

if [ -z "$(docker images -q headerfm 2> /dev/null)" ]; then
	docker rmi headerfm
fi
