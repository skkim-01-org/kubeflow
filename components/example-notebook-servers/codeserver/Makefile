TAG ?= v1.0
REGISTRY ?= tmsimageswg

docker-build-base:
	$(MAKE) docker-build -C ../base TAG=${TAG}

docker-build: docker-build-base
	docker build -t ${REGISTRY}/codeserver:${TAG} --build-arg BASE_IMG=${REGISTRY}/base:${TAG} -f Dockerfile . 

docker-push:
	docker push ${REGISTRY}/codeserver:${TAG}
