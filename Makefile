#!/usr/bin/make -f

fastly-compute-build-image:
	docker build -t fastly-compute-build:latest .

build: fastly-compute-build-image
	docker run --entrypoint /usr/bin/fastly -v ${PWD}:/src -w /src fastly-compute compute build
