# coding: utf-8
require 'spec_helper'

describe '環境変数 UBUNTU_USER' do
  it '値が設定されている' do
    expect(ENV['UBUNTU_USER']).not_to be_nil
  end
end

profile_path = "/home/#{ENV['UBUNTU_USER']}/.bash_profile"

describe file(profile_path) do
  it { should be_file }
  it { should contain 'AWS_ACCESS_KEY_ID'}
end

describe package('awscli') do
  it { should be_installed }
end

backup_script_path = "/home/#{ENV['UBUNTU_USER']}/bin/popfile_back.sh"

describe file(backup_script_path) do
  it { should be_file }
  it { should be_executable }
end
