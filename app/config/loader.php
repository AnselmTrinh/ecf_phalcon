<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * Register Namespaces
 */
$loader->registerNamespaces([
    'Ecf_phalcon\Models' => APP_PATH . '/common/models/',
    'Ecf_phalcon'        => APP_PATH . '/common/library/',
]);

/**
 * Register module classes
 */
$loader->registerClasses([
    'Ecf_phalcon\Modules\Frontend\Module' => APP_PATH . '/modules/frontend/Module.php',
    'Ecf_phalcon\Modules\Cli\Module'      => APP_PATH . '/modules/cli/Module.php'
]);

$loader->register();
