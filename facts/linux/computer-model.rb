Facter.add('computer-model') do
    setcode do
      # Get the computer model
      Facter::Core::Execution.execute('dmidecode -s system-product-name')
    end
  end