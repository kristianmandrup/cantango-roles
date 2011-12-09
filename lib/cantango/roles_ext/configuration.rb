module CanTango
  class Configuration
    module Registry
      sweet_scope :ns => {:CanTango => 'cantango/roles_ext'} do     
        sweetload :Role
      end
    end

    sweet_scope :ns => {:CanTango => 'cantango/roles_ext'} do     
      sweetload :System, :RoleGroups, :Roles
    end
  end
end