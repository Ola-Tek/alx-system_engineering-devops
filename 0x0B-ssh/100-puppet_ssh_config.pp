#!/usr/bin/env bash
#using the puppet style code to connect to server with a password

File { '/etc/ssh/ssh_config':
 ensure   => present,
}

File_line { 'Turn off passwd auth':
 path    => '/etc/ssh/ssh_config',
 line    => 'passwordAuthentication no,
 match   => '^passwordAuthentication',
}

File_line { 'Declare identity file':
 path    => '/etc/ssh/ssh_config',
 Line    => 'IdentityFile ~/.ssh/school', match   => '^#IdentityFile',
}
