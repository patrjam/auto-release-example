.PHONY: build
build: clean
	npm install

.PHONY: clean
clean:
	rm -rf node_modules

IMAGE_NAME = semantic-release-example

.PHONY: ci-build
ci-build:
	docker build -t $(IMAGE_NAME) .

.PHONY: ci-clean
ci-clean:
	docker rmi -f $(IMAGE_NAME)

.PHONY: ci-semantic-release
ci-semantic-release:
	docker run --rm $(IMAGE_NAME) npm run semantic:release