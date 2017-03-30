build:
	docker build -t rafache/php-cli .

check:
	docker run --rm rafache/php-cli php -v