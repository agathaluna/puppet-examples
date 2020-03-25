Facter.add('user-windows') do
  setcode do
    # Get the user logged on the machine
    Facter::Core::Execution.execute('wmic /node:"%ComputerName%" computersystem get username')
  end
end

