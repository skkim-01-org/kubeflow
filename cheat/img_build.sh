#!/bin/bash
# execute makefile command in bash script
#TAG ?= $(shell git describe --tags --always --dirty)
#REGISTRY ?= kubeflownotebookswg
TAG=v1.0
REGISTRY=tmsnotebookswg

# build base
docker build -t $REGISTRY/base:$TAG -f ../components/example-notebook-servers/base/Dockerfile .

#docker build -t $REGISTRY/codeserver:$TAG --build-arg BASE_IMG=$REGISTRY/base:$TAG -f ../components/example-notebook-servers/codeserver/Dockerfile .

# https://github.com/kubeflow/kubeflow/tree/master/components/example-notebook-servers#images--relationship-chart
