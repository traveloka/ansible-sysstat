describe service("sysstat") do
    it { should be_enabled }
    it { should be_running }
end

describe file('/etc/default/sysstat') do
    it { should exist }
end

describe parse_config_file('/etc/default/sysstat') do
    its('ENABLED') {should eq '"true"'}
end