require 'spec_helper'
require 'cantango/configuration/role_registry_ex'

describe CanTango::Configuration::RoleGroups do
  subject { CanTango.config.role_groups }

  it_should_behave_like "Role Registry" do
    specify { subject.system_api(:has).should == :in_role_group? }
    specify { subject.system_api(:list).should == :role_groups_list }
  end
end


