<?php

require '../config/dev.php';
require '../composer/autoload.php';
session_start();
$router = new \App\config\Router();
$router->run();