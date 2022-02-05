Facter.add('role') do
  setcode do
    case Facter.value(:hostname)
    when /router/ then role = 'router'
    else role = 'default'
    end
    role
  end
end
