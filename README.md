# PHP tools with Docker

Docker image to run :
- Composer
- Codeception
- Deployer
- PHP CS Fixer
- PHP Mess Detector
- PHP Code Sniffer
- PhpUnit
- Symfony

## Build

```bash
make
```

## Check (display version)
```bash
make check
```

## Run

```bash
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli php -v
docker run --rm -v /path/to/project/:/data -v ~/.composer:/root/.composer -v ~/.ssh:/root/.ssh:ro rafache/php-cli composer
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli codecept
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli phpunit
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli dep
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli php-cs-fixer
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli phpcs
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli phpcbf
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli phpmd
docker run --rm -v /path/to/project/:/data -v ~/.ssh:/root/.ssh:ro rafache/php-cli symfony
```
