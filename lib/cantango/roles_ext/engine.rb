module CanTango
  module Engine
    if defined? CanTango::Permit
      autoload_modules :Permit
    end
  end
end