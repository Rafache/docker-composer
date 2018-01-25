# PHP tools with Docker

Docker image to run :
- Composer
- Symfony
- PHP CS Fixer
- PHP Metrics
- Mixed Content Scan
- PHP7cc

## Run

```
alias composer='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" -v ~/.composer:/root/.composer registry.gitlab.com/rafache/docker/php-cli:master composer'
alias symfony='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" registry.gitlab.com/rafache/docker/php-cli:master symfony'
alias php-cs-fixer='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" registry.gitlab.com/rafache/docker/php-cli:master php-cs-fixer'
alias phpmetrics='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" registry.gitlab.com/rafache/docker/php-cli:master phpmetrics'
alias phpunit='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" -v ~/.ssh:/root/.ssh:ro registry.gitlab.com/rafache/docker/php-cli:master phpunit'
alias mixed-content-scan='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" --network=bridge registry.gitlab.com/rafache/docker/php-cli:master mixed-content-scan'
alias php7cc='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" registry.gitlab.com/rafache/docker/php-cli:master php7cc'
```