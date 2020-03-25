class google_chrome {

  # Get the file that is hosted on the puppet server
  file { '/tmp/google-chrome-stable_current_x86_64.rpm':
    ensure => 'present',
    path   => '/tmp/google-chrome-stable_current_x86_64.rpm',
    source => 'puppet:///modules/file_point/google-chrome-stable_current_x86_64.rpm',
  }

  # Install Google Chrome
  package { 'google-chrome':
    ensure   => 'installed',
    provider => 'rpm',
    source   => '/tmp/google-chrome-stable_current_x86_64.rpm',
  }
}
