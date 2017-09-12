build:
	docker build -t registry.gitlab.com/rafache/docker/php-cli .

check:
	docker run --rm registry.gitlab.com/rafache/docker/php-cli php -v