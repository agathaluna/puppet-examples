class filestream{

    # Get the file that is hosted on the puppet server
    file { 'C:/tmp/GoogleDriveFSSetup.exe':
      ensure => 'present',
      path   => 'C:/tmp/GoogleDriveFSSetup.exe',
      source => 'puppet:///modules/file_point/GoogleDriveFSSetup.exe',
    }

    # Install Google File Stream
    package { 'FileStream':
      ensure          => installed,
      source          => 'C:/tmp/GoogleDriveFSSetup.exe',
      install_options => ['GoogleDriveFSSetup --silent --desktop_shortcut']
    }
}
