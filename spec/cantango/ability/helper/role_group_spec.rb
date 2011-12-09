require 'spec_helper'
require 'fixtures/models'
require 'helpers/current_users'

class Permits
  include CanTango::Ability::Helper::RoleGroup
  
  attr_accessor :subject
  
  def initialize subject
    @subject = subject
  end
  
  def role_groups_list_meth
    :role_groups_list
  end  
end

class User
  include_and_extend SimpleRoles
end  

describe CanTango::Ability::Helper::RoleGroup do
  before do
    @user = User.new 'mike', 'mike@mail.ru', :role_groups => [:admins, :editors]
  end
  
  subject { Permits.new @user }
  
  describe 'role_groups' do    
    specify { subject.role_groups.should == [:admins, :editors] }
  end
end