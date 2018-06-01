# phpunit
alias phpunit56="sudo docker run --rm -u $UID -v \$PWD:/app -w /app --name phpunit56 rubeus/phpunit5.6 phpunit"
alias phpunit7="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name phpunit7 rubeus/phpunit7 phpunit"
alias phpunit72="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name phpunit72 rubeus/phpunit7.2 phpunit"

# composer
alias composer56="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name composer56 rubeus/composer5.6 composer"
alias composer7="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name composer7 rubeus/composer7 composer"
alias composer72="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name composer72 rubeus/composer7.2 composer"


# php 56
alias php56="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name php56 rubeus/php5.6 php"
alias php7="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name php7 rubeus/php7 php"
alias php72="sudo docker run --rm -u $UID -v \$PWD:/app  -w /app --name php72 rubeus/php7.2 php"

#Fron-end
alias node="sudo docker run --rm -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app --name node rubeus/node-npm node"
alias grunt="sudo docker run --rm -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app --name grunt rubeus/grunt grunt"
alias npm="sudo docker run --rm -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app --name npm rubeus/node-npm npm"
alias sass="sudo docker run --rm  -u $UID  -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app --name sass rubeus/sass sass"
alias ng="sudo docker run --rm  -u $UID -v \$PWD:/app -v ~/node_modules:/usr/local/lib/node_modules -w /app --name ng -p 4200:4200 rubeus/angular.io ng "
