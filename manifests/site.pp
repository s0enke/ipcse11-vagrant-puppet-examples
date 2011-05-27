# /etc/puppet/manifests/site.pp

import "classes/*"

Exec["apt-get-update"] -> Package <| |>

Exec {
    path => "/usr/bin:/usr/sbin:/bin"
}

exec { "apt-get-update" :
    command => "/usr/bin/apt-get update"
}

node "web.domain.test" {
    include web
}

node db {
}

