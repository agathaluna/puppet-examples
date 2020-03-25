class spotify {
  # Install spotify with brew command
  exec { 'InstallSpotify':
    command => '/usr/bin/su -u local_user /usr/local/bin/brew cask install spotify',
  }
}






 

