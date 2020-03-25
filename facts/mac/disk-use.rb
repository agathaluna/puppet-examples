Facter.add('disk-use') do
  setcode do
    # Get the disk usage
    Facter::Core::Execution.execute('df -h | grep /dev/disk1s1')
  end
end