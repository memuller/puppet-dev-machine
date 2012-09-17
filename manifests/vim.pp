# VIM Dot Files
vcsrepo { 'vim-dotfiles':
    path     => "/home/$id/.vim",
    ensure   => present,
    provider => git,
    source   => 'https://github.com/marcomoura/vim.git'
}

file { 'vim-dotfiles-symlink':
    path   => "/home/$id/.vimrc",
    ensure => link,
    target => '.vim/vimrc',
    require => Vcsrepo['vim-dotfiles']
}

exec { 'bundle':
    command => 'vim +BundleInstall +qall',
    cwd     => "/home/$id/.vim",
    require => Vcsrepo['vim-dotfiles']
}

exec { 'vim-make-command-t':
    command => 'rake make',
    cwd     => "/home/$id/.vim/bundle/Command-T",
    unless  => "ls -aFlh /home/$id/.vim/bundle/Command-T|grep 'command-t.recipe'",
    require => Vcsrepo['vim-dotfiles']
}
