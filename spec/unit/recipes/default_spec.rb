#
# Cookbook:: ssh
# Spec:: default
#
# Copyright:: 2017, Sean Holden, All Rights Reserved.

require 'spec_helper'

describe 'ssh::default' do
  context 'When all attributes are default, on Centos7' do
    let(:platform) { 'centos' }
    let(:version) { '7.2.1511' }
    let(:chef_run) {
      ChefSpec::SoloRunner.new(platform: platform, version: version).
        converge(described_recipe)
    }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe 'directories' do
      it 'creates .ssh directory' do
        expect(chef_run).to create_directory('/home/vagrant/.ssh').
          with(
            owner: 'vagrant',
            group: 'vagrant',
            mode: '700'
          )
      end
    end

    describe 'templates' do
      it 'creates id_rsa file' do
        expect(chef_run).to create_template('/home/vagrant/.ssh/id_rsa').
          with(
            owner: 'vagrant',
            group: 'vagrant',
            mode: '600'
          )
      end

      it 'creates id_rsa.pub file' do
        expect(chef_run).to create_template('/home/vagrant/.ssh/id_rsa.pub').
          with(
            owner: 'vagrant',
            group: 'vagrant',
            mode: '644'
          )
      end

      it 'creates known_hosts file' do
        expect(chef_run).to create_template('/home/vagrant/.ssh/known_hosts').
          with(
            owner: 'vagrant',
            group: 'vagrant',
            mode: '600'
          )
      end
    end
  end

  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:platform) { 'ubuntu' }
    let(:version) { '16.04' }
    let(:chef_run) {
      ChefSpec::SoloRunner.new(platform: platform, version: version).
        converge(described_recipe)
    }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    describe 'directories' do
      it 'creates .ssh directory' do
        expect(chef_run).to create_directory('/home/ubuntu/.ssh').
          with(
            owner: 'ubuntu',
            group: 'ubuntu',
            mode: '700'
          )
      end
    end

    describe 'templates' do
      it 'creates id_rsa file' do
        expect(chef_run).to create_template('/home/ubuntu/.ssh/id_rsa').
          with(
            owner: 'ubuntu',
            group: 'ubuntu',
            mode: '600'
          )
      end

      it 'creates id_rsa.pub file' do
        expect(chef_run).to create_template('/home/ubuntu/.ssh/id_rsa.pub').
          with(
            owner: 'ubuntu',
            group: 'ubuntu',
            mode: '644'
          )
      end

      it 'creates known_hosts file' do
        expect(chef_run).to create_template('/home/ubuntu/.ssh/known_hosts').
          with(
            owner: 'ubuntu',
            group: 'ubuntu',
            mode: '600'
          )
      end
    end
  end
end
