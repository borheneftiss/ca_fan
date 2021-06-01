<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit4ece63d8a3062f7d8ccd6616bc2d48fa
{
    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit4ece63d8a3062f7d8ccd6616bc2d48fa::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit4ece63d8a3062f7d8ccd6616bc2d48fa::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
