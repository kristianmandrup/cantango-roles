require 'spec_helper'
require 'cantango/configuration/shared/role_registry_ex'

describe CanTango::Configuration::Registry::Role do
  subject { CanTango.config.roles }

  it_should_behave_like "Role Registry" do
  end
end