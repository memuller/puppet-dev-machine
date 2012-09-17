
Package{ ensure => installed }

package{'mongodb': } 

package{'libxml2': }
package{'libxml2-dev': }
package{'libxslt1.1': }
package{'libxslt1-dev': }
package{'libaio-dev': }
package{'freetds-dev': } 
package{'freetds-bin': } 
package{'tdsodbc': }
package{'unixodbc': }
package{'unixodbc-dev': }

exec{ "install oracle":
    command => 'dpkg -i oracle/oracle-instantclient11.2-basic_11.2.0.2.0-2_amd64.deb oracle/oracle-instantclient11.2-devel_11.2.0.3.0-2_amd64.deb oracle/oracle-instantclient11.2-sqlplus_11.2.0.2.0-2_amd64.deb',
    provider => shell,
}


exec{'drop ess_test':
  command => 'mysqladmin -u root drop ess_test',
  provider => shell,
}
exec{'create ess_test':
  command => 'mysqladmin -u root create ess_test',
  provider => shell,
}
