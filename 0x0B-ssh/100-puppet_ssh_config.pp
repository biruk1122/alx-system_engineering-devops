file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/sshd_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

file_line { 'Declare identity file':
  path   => '~/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}
