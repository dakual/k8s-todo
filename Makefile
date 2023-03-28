DOCKER_USERNAME ?= kurtay
FT_NAME ?= k8s-dev-ft
BE_NAME ?= k8s-dev-be
GIT_HASH ?= $(shell git log --format="%h" -n 1)

build:
	docker build --no-cache --tag ${DOCKER_USERNAME}/${BE_NAME} ./backend
	docker build --no-cache --tag ${DOCKER_USERNAME}/${FT_NAME} ./frontend
push:
	docker push ${DOCKER_USERNAME}/${FT_NAME}
	docker push ${DOCKER_USERNAME}/${BE_NAME}
deploy:
	kubectl apply -f ./minikube
destroy:
	kubectl delete -f ./minikube