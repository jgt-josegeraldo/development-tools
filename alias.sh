# php 56
alias composer="sudo docker run --rm -u $UID -v $PWD:/app composer/composer"



#Fron-end
alias node="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower node"
alias grunt="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower grunt"
alias npm="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower npm"
alias bower="sudo docker run -ti --rm -u $UID -v $PWD:/data dragonmantank/nodejs-grunt-bower bower"
alias sass="sudo docker run -ti --rm -u $UID -v $PWD:/data jbergknoff/sass sass"

