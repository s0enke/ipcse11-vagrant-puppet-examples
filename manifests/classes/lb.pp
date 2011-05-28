class lb {
    include haproxy
    haproxy::backend {"be_web":
        servers => [
            {
                name => "be_web_1",
                ip => "33.33.33.11",
            },
            {
                name => "be_web_2",
                ip => "33.33.33.12",
            }
        ]
    }

    haproxy::frontend {"fe_web":
        name => "fe_web",
        ip => $::ipaddress_eth1,
        default_backend => "be_web",
        options => [ "httplog" ]
    }

}
