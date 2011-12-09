module CanTango::Ability
  module Helper
    sweet_scope :ns => {:CanTango => 'cantango/roles_ext'} do 
      sweetload :Role, :RoleGroup
    end
  end
end