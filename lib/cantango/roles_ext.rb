module CanTango
  sweet_scope :ns => {:CanTango => 'cantango/roles'} do 
    sweetload :Ability, :Builder, :Configuration, :Engine, :Filter, :Helpers
    
    if defined? CanTango::Permit
      sweetload :Permit
    end
  end
end
