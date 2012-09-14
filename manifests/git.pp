# Configure Git

package{'git':
    ensure => installed,
}

exec { "git-author-name":
    command => 'git config --global user.name "Marco Moura"',
    unless  => 'git config --global --get user.name | grep "Marco Moura"',
    provider => shell,
    require => Package["git"],
}

exec { "git-author-email":
    command => 'git config --global user.email "email@marcomoura.com"',
    unless  => 'git config --global --get user.email | grep "email@marcomoura.com"',
    provider => shell,
    require => Package["git"],
}

exec { "git-global-ignore":
    command => "git config --global core.excludesfile /home/$id/.gitignore",
    unless  => 'git config -l --global | grep excludesfile',
    provider => shell,
    require => Package["git"],
}

file { "git-global-ignorefile":
    path => "/home/$id/.gitignore",
    ensure => present,
    content => "*.swo\n*.swp\n",
}





