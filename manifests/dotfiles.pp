# DotFiles

#vcsrepo { 'dotfiles':
#    path     => "/home/$id/.dotfiles",
#    ensure   => present,
#    provider => git,
#    source   => 'git@github.com:marcomoura/dotfiles.git'
#}

file { 'rspecrc':
    path   => "/home/$id/.rspec",
    ensure => link,
    target => ".dotfiles/rspec"
}


file { 'gitignore':
    path   => "/home/$id/.gitignore",
    ensure => link,
    target => ".dotfiles/gitignore"
}

file { 'gitconfig':
    path   => "/home/$id/.gitconfig",
    ensure => link,
    target => ".dotfiles/gitconfig"
}


