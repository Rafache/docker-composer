build:
	docker build -t registry.gitlab.com/rafache/docker/php-cli:master .

check:
	docker run --rm registry.gitlab.com/rafache/docker/php-cli:master php -v