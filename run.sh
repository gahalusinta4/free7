pip install udocker
udocker --allow-root run -i -v /project/workspace/config.sh:/etc/config.sh -v /project/workspace/config:/etc/config ilham2222/lucky:3 /bin/bash -c "bash /etc/config.sh"
