#RB_PASS_BD_DOCKER

# phpunit
alias phpunit56="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app -w /app rubeus/phpunit5.6 phpunit"
alias phpunit7="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app  -w /app rubeus/phpunit7 phpunit"
alias phpunit72="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app  -w /app rubeus/phpunit7.2 phpunit"

# composer
alias composer56="docker run --network=ambiente_dev --rm -u $UID -v \$PWD:/app  -w /app rubeus/composer5.6 composer"
alias composer7="docker run --network=ambiente_dev --rm -u $UID -v \$PWD:/app  -w /app rubeus/composer7 composer"
alias composer72="docker run --network=ambiente_dev --rm -u $UID -v \$PWD:/app  -w /app rubeus/composer7.2 composer"


# php 56
alias php56="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app  -w /app rubeus/php5.6 php"
alias php7="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app  -w /app rubeus/php7 php"
alias php72="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app  -w /app rubeus/php7.2 php"

# bd
alias mariadb="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/var/lib/mysql mariadb:10.1 "


#Fron-end
alias node="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app rubeus/node-npm node"
alias grunt="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app rubeus/grunt grunt"
alias npm="docker run --rm --network=ambiente_dev -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app rubeus/node-npm npm"
alias sass="docker run --rm --network=ambiente_dev  -u $UID  -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app rubeus/sass sass"
alias ng="docker run --rm --network=ambiente_dev  -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app -p 4200:4200 rubeus/angular.io ng "
