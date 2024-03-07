VOLUME="${PWD}/hidden"
: ${IMAGE:="ghcr.io/asssaf/torrelay:master"}

mkdir -p "$VOLUME"
chmod 0700 $VOLUME

docker run --name torrelay -d -it \
	-v "${VOLUME}:/hidden" \
	--restart=unless-stopped \
	${IMAGE}
