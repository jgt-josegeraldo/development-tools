#
alias composer="sudo docker run --rm -u $UID -v $PWD:/app composer/composer"


# php 56
alias php56="sudo docker run --rm -u $UID -v $PWD:/app php:5.6-fpm php"

# php 7
alias php7="sudo docker run --rm -u $UID -v $PWD:/app php:7 php"


# php 7.2
alias php72="sudo docker run --rm -u $UID -v $PWD:/app php:7.2 php"

#Fron-end
alias node="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower node"
alias grunt="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower grunt"
alias npm="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower npm"
alias bower="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower bower"
alias sass="sudo docker run -ti --rm -u $UID -v $PWD:/data jbergknoff/sass sass"

