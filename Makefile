.PHONY: build
build:
	spin build

USER ?= kingdonb

image:
	docker buildx build --push . \
		-t $(USER)/cloud-start-wasm:latest \
		--platform linux/arm64
