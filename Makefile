DOCKER_REPO=kernsuite/presto:1

.PHONY: build clean run

all: run

build:
	docker build -t ${DOCKER_REPO} .

clean:
	docker rmi ${DOCKER_REPO}

run: build
	docker run -ti ${DOCKER_REPO}
