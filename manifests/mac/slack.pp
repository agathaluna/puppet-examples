class slack {
  # Install Slack from web
  package { 'slack':
    ensure   => 'installed',
    provider => 'appdmg',
    source   => 'https://slack.com/ssb/download-osx',
  }
}

