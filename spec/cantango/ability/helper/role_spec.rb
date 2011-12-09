require 'spec_helper'
require 'fixtures/models'
require 'helpers/current_users'

class Permits
  include CanTango::Ability::Helper::Role
  
  attr_accessor :subject
  
  def initialize subject
    @subject = subject
  end
  
  def roles_list_meth
    :roles_list
  end
end

class User
  include_and_extend SimpleRoles
end  

describe CanTango::Ability::Helper::Role do
  before do
    @user = User.new 'mike', 'mike@mail.ru', :roles => [:admin, :editor]
  end
  
  subject { Permits.new @user }
  
  describe 'roles' do    
    specify { subject.roles.should == [:admin, :editor] }
  end
end