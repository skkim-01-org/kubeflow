TAG ?= v1.0
REGISTRY ?= tmsimageswg


.PHONY: docker-build
docker-build: build-jupyter-pytorch-full build-jupyter-tensorflow-full build-jupyter-scipy build-codeserver-python build-rstudio-tidyverse
		@echo "\nAll notebook-server images have been successfully built...\n"

.PHONY: build-jupyter-pytorch-full
build-jupyter-pytorch-full: build-jupyter-pytorch-full-cpu build-jupyter-pytorch-full-cuda

.PHONY: build-jupyter-pytorch-full-cpu
build-jupyter-pytorch-full-cpu:
	@echo "\nBuilding jupyter-pytorch-full-cpu image...\n"
	$(MAKE) docker-build-cpu -C jupyter-pytorch-full TAG=${TAG}

.PHONY: build-jupyter-pytorch-full-cuda
build-jupyter-pytorch-full-cuda:
	@echo "\nBuilding jupyter-pytorch-full-cuda image...\n"
	$(MAKE) docker-build-cuda -C jupyter-pytorch-full TAG=${TAG}

.PHONY: build-jupyter-tensorflow-full
build-jupyter-tensorflow-full: build-jupyter-tensorflow-full-cpu build-jupyter-tensorflow-full-cuda

.PHONY: jupyter-tensorflow-full-cpu
build-jupyter-tensorflow-full-cpu:
	@echo "\nBuilding jupyter-tensorflow-full-cpu image...\n"
	$(MAKE) docker-build-cpu -C jupyter-tensorflow-full TAG=${TAG}

.PHONY: build-jupyter-tensorflow-full-cuda
build-jupyter-tensorflow-full-cuda:
	@echo "\nBuilding jupyter-tensorflow-full-cuda image...\n"
	$(MAKE) docker-build-cuda -C jupyter-tensorflow-full TAG=${TAG}

.PHONY: build-jupyter-scipy
build-jupyter-scipy:
	@echo "\nBuilding jupyter-scipy image...\n"
	$(MAKE) docker-build -C jupyter-scipy TAG=${TAG}

.PHONY: build-codeserver-python
build-codeserver-python:
	@echo "\nBuilding codeserver-python image...\n"
	$(MAKE) docker-build -C codeserver-python TAG=${TAG}

.PHONY: build-rstudio-tidyverse
build-rstudio-tidyverse:
	@echo "\nBuilding rstudio-tidyverse image...\n"
	$(MAKE) docker-build -C rstudio-tidyverse TAG=${TAG}

.PHONY: docker-push
docker-push:


	@echo "\nAll notebook-server images have been successfully pushed...\n"
