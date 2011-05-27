# nodes

node "web.domain.test" {
    $server_name="33.33.33.11"
    include web
}

node "lb.domain.test" {
    include lb
}

