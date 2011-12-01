module CanTango
  autoload_scope :ns => {:CanTango => 'cantango/roles'} do 
    autoload_modules :Ability, :Builder, :Configuration, :Engine, :Filter, :Helpers
    
    if defined? CanTango::Permit
      autoload_modules :Permit
    end
  end
end
