require 'spec_helper'
describe 'cisco_demo' do

  context 'with defaults for all parameters' do
    it { should contain_class('cisco_demo') }
  end
end
