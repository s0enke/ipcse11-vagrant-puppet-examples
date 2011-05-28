# nodes

node "web01.domain.test" {
    $server_name="33.33.33.11"
    include web
}

node "web02.domain.test" {
    $server_name="33.33.33.12"
    include web
}

node "lb.domain.test" {
    include lb
}
