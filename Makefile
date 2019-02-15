NAME	:= hydraplatform/hydra-network-utils
TAG	:= $$(git rev-parse --short=8 HEAD)
IMG	:= ${NAME}:${TAG}
LATEST	:= ${NAME}:latest

build:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${LATEST}
