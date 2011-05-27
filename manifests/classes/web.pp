class web {
    $nginx_includes = "/etc/nginx/includes"
    $nginx_conf = "/etc/nginx/conf.d"
    include nginx
    include nginx::fcgi
    include php5-fpm
    nginx::fcgi::site {"awesomesite":
        root            => "/var/www/awesomesite",
        fastcgi_pass    => "127.0.0.1:9000",
        server_name     => ["33.33.33.11"], # no dns!
    }    

    php5-fpm::config{"global":
        ensure  => present,
        order   => "000",
    }
}
