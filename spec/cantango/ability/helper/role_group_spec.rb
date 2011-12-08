require 'spec_helper'
require 'fixtures/models'
require 'helpers/current_users'

class Permits
  include CanTango::Ability::Helpers::RoleGroup
  
  attr_accessor :subject
  
  def initialize subject
    @subject = subject
  end
end

class User
  include ::CurrentUsers
  include_and_extend SimpleRoles
end  

describe CanTango::Ability::Helper::RoleGroup do
  before do
    @user = User.new 'mike', :role_groups => [:admins, :editors]
  end
  
  subject { Permits.new @user }
  
  describe 'role_groups' do    
    specify { subject.role_groups.should == [:admins, :editors]
  end
end