module CanTango
  sweet_scope :ns => {:CanTango => 'cantango/roles_ext'} do 
    sweetload :Helpers, :Ability, :Builder, :Configuration, :Engine, :Filter
    
    if defined? CanTango::Permit
      sweetload :Permit
    end
  end
end
