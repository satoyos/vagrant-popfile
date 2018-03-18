# coding: utf-8
require 'spec_helper'

describe package('perl') do
  it { should be_installed }
end

describe package('popfile') do
  it { should be_installed }
end

describe service('popfile') do
  it { should be_running }
  it { should be_enabled }
end

describe file('/var/lib/popfile/popfile.cfg') do
  it { should be_file }
  its(:content){ should match /^html_local\s+0$/}
end
