require 'spec_helper'
require 'cantango/configuration/shared/system_ex'

describe CanTango::Configuration::System do
  subject { CanTango.config.roles }

  it_should_behave_like "System" do
  end
end