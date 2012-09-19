
exec { "add node ppa":
    command => "/usr/bin/apt-add-repository ppa:chris-lea/node.js",
    creates => "/etc/apt/sources.list.d/kilian-node-maverick.list",
    notify => Exec["apt-get update"],
  }

exec { "apt-get update":
        command => "/usr/bin/apt-get update",
        refreshonly => true;
    }


