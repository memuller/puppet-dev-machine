
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

#exec{ 'node': command => 'apt-add-repository ppa:chris-lea/node.js', }
#exec{ 'update': command => 'apt-get -y update', }
#package{'nodejs': }


