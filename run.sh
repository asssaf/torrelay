VOLUME="${PWD}/hidden"
: ${IMAGE:="asssaf/torrelay"}

mkdir -p "$VOLUME"
chmod 0700 $VOLUME

docker run --name torrelay -it \
	-v "${VOLUME}:/home/user/hidden" \
	--restart=unless-stopped \
	${IMAGE}
