TAG := local/luatex:240504

build:
	docker run --rm -v ./:/app $(TAG)
docker:
	docker build -t $(TAG) ./.github/actions
