class web {
    $nginx_includes = "/etc/nginx/includes"
    $nginx_conf = "/etc/nginx/conf.d"
    include nginx
    include nginx::fcgi
    include php5-fpm
    nginx::fcgi::site {"awesomesite":
        root            => "/vagrant/myproject/document_root/",
        fastcgi_pass    => "127.0.0.1:9000",
        server_name     => [$server_name], # no dns!
    }    

    php5-fpm::config{"global":
        ensure  => present,
        order   => "000",
    }
}
