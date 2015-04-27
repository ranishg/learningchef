#
# Cookbook Name:: apache-test
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

at_exit { ChefSpec::Coverage.report! }

describe 'apache-test::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs apache2' do
      expect(chef_run).to install_package('httpd')
    end

    it 'starts httpd service' do
      expect(chef_run).to start_service('httpd')
    end

    it 'creates a template index html file' do
      expect(chef_run).to create_template('/var/www/html/index.html')
    end

  end
end
