<?php 

require 'vendor/autoload.php';

$app = new \Slim\App;

$app->get('/hello[/{name}]', function($request, $response) {
    $name = $request->getAttribute('name');
    if (!$name) {
        $name = "bebzz!";
    }
    $response->getBody()->write("Hello, $name");

    return $response;
});

$app->run();