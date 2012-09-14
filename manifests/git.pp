# Configure Git

Exec { 
    provider => shell,
#    require => Package["git"]
}

exec { "git-author-name":
    command => 'git config --global user.name "Marco Moura"'
}

exec { "git-author-email":
    command => 'git config --global user.email "email@marcomoura.com"'
}

exec { "github-user":
    command => 'git config --global github.user "marcomoura"'
}

exec { "git-alias.st":
    command => 'git config --global alias.st status'
}

exec { "git-color":
    command => 'git config --global color.diff auto'
}

exec { "git-global-ignore":
    command => "git config --global core.excludesfile /home/$id/.gitignore"
}

file { "git-global-ignorefile":
    ensure => present,
    path => "/home/$id/.gitignore",
    content => "*.swo\n*.swp\n",
#   require => Package["git"],
}





