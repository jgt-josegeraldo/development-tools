<?php

$objPdo = new PDO("mysql:host=mariadb;dbname=speak_english",
                   'root',
                   '${RB_PASS_BD_DOCKER}',array(PDO::ATTR_PERSISTENT => false)
               );
