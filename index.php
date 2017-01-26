<?php 

require 'vendor/autoload.php';

$app = new \Slim\App;

$app->get('/hello[/{name}]', function($request, $response) {
    $name = $request->getAttribute('name');
    if (!$name) {
        $name = "bebzz zzz zzz!";
    }
    $response->getBody()->write("Hello, $name");

    return $response;
});

$app->run();