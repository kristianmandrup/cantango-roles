module CanTango
  class Engine
    if defined? CanTango::Permit
      sweetload :Permit
    end
  end
end