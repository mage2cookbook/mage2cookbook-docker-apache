# Magento 2 CookBook Docker

This Magento 2 Docker repo is used in the upcoming Magento 2 CookBook by Packtpub Publishing media 2016

## Kudos and Respect

In order to produce this docker repo for Magento 2 I was inspirred by John Willis (Velocity Conf Amsterdam 2015), Alan Kent and Karen Baker.

And not to forget O'Reilly's Andrew Tork Baker for his great Docker video tutorial [http://shop.oreilly.com/product/0636920035732.do](http://)

# Manual Changes

The repo is build on the stable Magento 2 data set incl.
- build docker container and pushed to docker hub [https://hub.docker.com/u/raybogman/](https://)
- url rewrites enabled
- cleanup database - to start with a clean db
- bin/magento indexer:reindex
- bin/magento cache:clean
- bin/magento cache:flush
- bin/magento setup:static-content:deploy

There is also a Magento 2 Sample Data Docker container [https://github.com/mage2cookbook/mage2cookbook-sample-docker-apache](https://)

- bin/magento sampledata:deploy
- php /var/www/magento2/composer.phar update

# Pre-Requisites

1. Install Docker (I'm using a DigitalOcean droplet )
2. docker run -d --name mysql -p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=admin \
	mysql:5.6
3. docker run --rm --name magento2 -it -p 80:80 --link mysql:mysql \
	-e MYSQL_USER=root -e MYSQL_PASSWORD=admin \
	-e PUBLIC_HOST=yourdomain.com \
	raybogman/mage2cookbook-sample-docker $*
4. Change the PUBLIC_HOST with your IP of domain name. It will automaticly add the IP of domain to your Magento 2 configuration. 

# Execution

1. git clone this
2. In base directory do `docker-compose build`
3. Go have a cup of tea
4. When finished do `docker-compose up`
5. Connect to magento in browser via your docker ip address (you see this when you first load docker terminal window) 


# Useful Docker commands

  docker ps
  docker images
  docker exec -it <image_id> bash
  docker stop


# Notes

Not intended in anyway for Production use.


#TODOs



