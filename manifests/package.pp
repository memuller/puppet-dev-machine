
Package{ ensure => installed }

package{'git': }
package{'gitg': }
package{'git-core': } 

package{'vim-nox': }

package{'redis-server': }

package{'mysql-server': }
package{'mysql-client': }
package{'libmysqlclient-dev': }

package{'build-essential': }
package{'zlib1g-dev': } 
package{'libssl-dev': } 
package{'libreadline-dev': } 
package{'libyaml-dev': } 
package{'libcurl4-openssl-dev': } 
package{'curl': } 
package{'python-software-properties': }

exec { "add node ppa":
    command => "/usr/bin/apt-add-repository ppa:chris-lea/node.js",
    creates => "/etc/apt/sources.list.d/kilian-node-maverick.list",
    notify => Exec["apt-get update"],
  }

exec { "apt-get update":
        command => "/usr/bin/apt-get update",
        refreshonly => true;
    }

package{'nodejs': }


