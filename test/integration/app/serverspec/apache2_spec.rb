require 'serverspec'

set :backend, :exec

describe package("httpd") do
  it { should be_installed }
end

describe process("httpd") do
  it { should be_running }
end

describe port("80") do
  it { should be_listening.with("tcp") }
end

