#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ "$(docker ps -a | grep headerfm-app)" ]; then
	docker stop headerfm-app
	docker rm headerfm-app
fi
# npm run build

docker run -dit \
--name headerfm-app \
-p 8080:80 \
-v $DIR/../examples/apache/webdav.conf:/etc/apache2/sites-enabled/webdav.conf:ro \
-v $DIR/../build:/var/www/html/_headerfm:ro \
headerfm sleep infinity

docker exec -it headerfm-app /bin/bash -c "\
chown www-data -R /var/www/html 2> /dev/null; \
apachectl start | apachectl restart \
"
