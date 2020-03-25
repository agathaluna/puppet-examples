Facter.add('computer-model') do
    setcode do
      # Get the computer model
      Facter::Core::Execution.execute('wmic computersystem get model')
    end
  end