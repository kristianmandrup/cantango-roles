require 'spec_helper'
require 'fixtures/models'

CanTango.configure do |config|
  config.permission_engine.set :off
  config.permit_engine.set :on
  config.categories.register :blog_items => [Article, Post]
end

class AdminsRoleGroupPermit < CanTango::Permit::RoleGroup
  def initialize ability
    super
  end

  protected

  def calc_rules
    can :publish, Post
    can :write, Article
    can :write, category(:blog_items)
  end
end

class EditorsRoleGroupPermit < CanTango::Permit::RoleGroup
  def initialize ability
    super
  end

  protected

  def calc_rules
    can :publish, category(:blog_items)
  end
end


describe CanTango::Filter::RoleGroup do
  describe 'role groups filter - exclude :admins' do
    let (:user) do
      User.new 'stan', 'stan@gmail.com'
    end

    let (:user_account) do
      ua = UserAccount.new user, :roles => [:user, :admin], :role_groups => [:admins]
      user.account = ua
    end

    before do
      CanTango.config.role_groups.exclude :admins
      CanTango.config.categories.register :blog_items => [Article, Post]

      @ability = CanTango::Ability.new user_account
    end

    after do
      CanTango.config.clear!
    end

    subject { @ability }
      specify { @ability.should be_allowed_to(:read, Post)}

      specify { @ability.should_not be_allowed_to(:read, Comment)}
      specify { @ability.should_not be_allowed_to(:write, Article)}
  end
end

describe CanTango::Filter::RoleGroup do
  describe 'role groups filter- only :admins' do
    let (:user) do
      User.new 'stan', 'stan@gmail.com'
    end

    let (:user_account) do
      ua = UserAccount.new user, :roles => [:user, :admin], :role_groups => [:admins, :editors]
      user.account = ua
    end

    before do
      CanTango.config.categories.register :blog_items => [Article, Post]
      CanTango.config.role_groups.only :admins
      @ability = CanTango::Ability.new user_account
    end

    after do
      CanTango.config.clear!
    end

    subject { @ability }
      specify { @ability.should be_allowed_to(:read, Comment)}
      specify { @ability.should be_allowed_to(:write, Article)}

      specify { @ability.should be_allowed_to(:publish, Post)}

      specify { @ability.should_not be_allowed_to(:publish, Article)}
   end
end
