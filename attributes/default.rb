if platform?('centos')
  default['ssh']['user'] = 'vagrant'
elsif platform?('ubuntu')
  default['ssh']['user'] = 'ubuntu'
end
