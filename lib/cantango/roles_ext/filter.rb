module CanTango
  module Filter
    sweet_scope :ns => {:CanTango => 'cantango/roles_ext'} do     
      sweetload :Role, :RoleGroup
    end
  end
end
