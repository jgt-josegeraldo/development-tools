docker-compose up -d
sleep 20
docker exec rb-mariadb10 mysql -u root -p$RB_PASS_BD_DOCKER -e "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '${RB_PASS_BD_DOCKER}' WITH GRANT OPTION;"
docker exec rb-mariadb10 mysql -u root -p$RB_PASS_BD_DOCKER -e "FLUSH PRIVILEGES;"
