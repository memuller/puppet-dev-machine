# DotFiles

#vcsrepo { 'dotfiles':
#    path     => "/home/$id/.dotfiles",
#    ensure   => present,
#    provider => git,
#    source   => 'git@github.com:marcomoura/dotfiles.git'
#}

file { 'rspecrc':
    path   => "/home/$id/.rspecrc",
    ensure => link,
    target => '.dotfiles/rspecrc',
#    require => Vcsrepo['dotfiles']
}


