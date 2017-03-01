# # encoding: utf-8

# Inspec test for recipe ssh::default

describe directory('/home/vagrant/.ssh') do
  it { should exist }

  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
  it { should be_executable.by('owner') }

  it { should_not be_readable.by('group') }
  it { should_not be_writable.by('group') }
  it { should_not be_executable.by('group') }
end

describe file('/home/vagrant/.ssh/id_rsa') do
  it { should exist }

  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
  it { should_not be_executable.by('owner') }

  it { should_not be_readable.by('group') }
  it { should_not be_writable.by('group') }
  it { should_not be_executable.by('group') }
end

describe file('/home/vagrant/.ssh/id_rsa.pub') do
  it { should exist }

  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
  it { should_not be_executable.by('owner') }

  it { should be_readable.by('group') }
  it { should_not be_writable.by('group') }
  it { should_not be_executable.by('group') }
end

describe file('/home/vagrant/.ssh/known_hosts') do
  it { should exist }

  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
  it { should_not be_executable.by('owner') }

  it { should_not be_readable.by('group') }
  it { should_not be_writable.by('group') }
  it { should_not be_executable.by('group') }
end
