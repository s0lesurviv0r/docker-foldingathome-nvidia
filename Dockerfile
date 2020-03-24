FROM nvidia/driver:410.104-ubuntu16.04
ADD	https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb /root/
RUN	apt-get update \
	&& apt-get install -y ocl-icd-opencl-dev \
	&& mkdir -p /usr/share/doc/fahclient/ \
	&& mkdir /data \
	&& touch /usr/share/doc/fahclient/sample-config.xml \
	&& DEBIAN_FRONTEND=noninteractive apt-get install /root/fahclient_7.5.1_amd64.deb -y
WORKDIR /data
ENV	USER=Anonymous \
	TEAM=0 \
	PASSKEY="" \
	GPU="true" \
	CPUS="0" \
	FAHDIR=/data

ENTRYPOINT ["/usr/bin/FAHClient", "--user=${USER} --team=${TEAM} --passkey=${PASSKEY} --gpu=${GPU} --smp=true --cpus=${CPUS} --chdir=$FAHDIR"]
