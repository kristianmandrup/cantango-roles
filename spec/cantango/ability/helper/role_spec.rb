require 'spec_helper'
require 'fixtures/models'
require 'helpers/current_users'

class Permits
  include CanTango::Ability::Helpers::Role
  
  attr_accessor :subject
  
  def initialize subject
    @subject = subject
  end
end

class User
  include ::CurrentUsers
  include_and_extend SimpleRoles
end  

describe CanTango::Ability::Helper::Role do
  before do
    @user = User.new 'mike', :roles => [:admin, :editor]
  end
  
  subject { Permits.new @user }
  
  describe 'roles' do    
    specify { subject.roles.should == [:admin, :editor]
  end
end