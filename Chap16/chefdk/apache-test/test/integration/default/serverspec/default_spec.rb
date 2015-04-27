require 'spec_helper'

describe 'apache-test::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end

  it 'returns eth1 in HTML body' do
    expect(command('curl localhost:80').stdout).to match /eth1/
  end

  it 'has the apache webserver installed' do
    expect(package 'httpd').to be_installed
  end

end
