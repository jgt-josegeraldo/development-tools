cd node-npm/
docker build --build-arg UID=$UID  --build-arg USERNAME=$USERNAME -t rubeus/node-npm .

cd ../php/php7/
docker build -t rubeus/php7 .

cd ../php5/
docker build -t rubeus/php5.6 .

cd ../php7.2/
docker build -t rubeus/php7.2 .

cd ../../angular/angular.io/
docker build -t rubeus/angular.io .

cd ../../composer/composer5/
docker build -t rubeus/composer5.6 .

cd ../composer7.2/
docker build -t rubeus/composer7.2 .

cd ../composer7/
docker build -t rubeus/composer7 .

cd ../../grunt/
docker build --no-cache -t rubeus/grunt .

cd ../phpunit/phpunit7/
docker build -t rubeus/phpunit7 .

cd ../phpunit7.2/
docker build -t rubeus/phpunit7.2 .

cd ../phpunit5/
docker build -t rubeus/phpunit5.6 .

cd ../../sass/
docker build --no-cache -t rubeus/sass .

cd ../../environment/php5MariadbApache/apache/
docker build --build-arg UID=$UID  --build-arg USERNAME=$USERNAME -t rubeus/apache-php2 .
