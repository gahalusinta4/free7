pip install udocker
#udocker --allow-root run -i -t -v /project/workspace/config.sh:/etc/config.sh -v /project/workspace/config:/etc/config ilham2222/lucky:3 /bin/bash -c "bash /etc/config.sh"
udocker --allow-root run -i -t -v /sec/root/config.sh:/etc/config.sh -v /sec/root/config:/etc/config ilham2222/lucky:3 /bin/bash -c "bash /etc/config.sh"
