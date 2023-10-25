TAG ?= v1.0
REGISTRY ?= tmsimageswg

docker-build:
	docker build -t ${REGISTRY}/base:${TAG} -f Dockerfile .

docker-push:
	docker push ${REGISTRY}/base:${TAG}
