class java{

    # Get the file that is hosted on the puppet server
    file { 'C:/tmp/jre-8u201-windows-x64.exe':
      ensure => 'present',
      path   => 'C:/tmp/jre-8u201-windows-x64.exe',
      source => 'puppet:///modules/file_point/jre-8u201-windows-x64.exe',
    }

    # Install Java
    package { 'Java':
      ensure => installed,
      source => 'C:/tmp/jre-8u201-windows-x64.exe',
    }

}
