require 'spec_helper'
require 'cantango/configuration/role_registry_ex'

class Subject
end

describe CanTango::Helpers::RoleGroup do
  before do
    CanTango.config.roles.system = :troles
  end
  
  subject do
    Subject.new
  end

  specify do
    subject.role_method(:has).should == :in_role_group?
  end
  
  specify do
    subject.role_method(:list).should == :role_group_list
  end  
end



