require 'serverspec'

set :backend, :exec

describe user("vagrant") do
  it { should exist }
  it { should belong_to_group "wheel" }
end

