Facter.add('user-mac') do
  setcode do
    # Get the user logged on the machine
    Facter::Core::Execution.execute('last -1 -t console | cut -f1 -d" "')
  end
end

