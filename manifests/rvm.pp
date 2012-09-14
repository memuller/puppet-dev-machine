exec { "rvm":
    command => 'curl -L get.rvm.io | bash -s stable --auto',
    provider => shell,
}

