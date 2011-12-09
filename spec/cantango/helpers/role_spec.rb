require 'spec_helper'
require 'cantango/configuration/role_registry_ex'

class Subject
end

describe CanTango::Helpers::Role do
  before do
    CanTango.config.roles.system = :troles
  end
  
  subject do
    Subject.new
  end

  specify do
    subject.role_method(:has).should == :has_role?
  end
  
  specify do
    subject.role_method(:list).should == :role_list
  end  
end



