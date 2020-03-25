Facter.add('hard-drive') do
  setcode do
    # Get the type of the hard drive
    Facter::Core::Execution.execute('lsblk -io MODEL')
  end
end

