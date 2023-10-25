TAG ?= v1.0
REGISTRY ?= tmsimageswg

docker-build-codeserver:
	$(MAKE) docker-build -C ../codeserver TAG=${TAG}

docker-build: docker-build-codeserver
	docker build -t ${REGISTRY}/codeserver-python:${TAG} --build-arg BASE_IMG=${REGISTRY}/codeserver:${TAG} -f Dockerfile . 

docker-push:
	docker push ${REGISTRY}/codeserver-python:${TAG}
