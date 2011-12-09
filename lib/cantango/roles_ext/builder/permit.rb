module CanTango::Builder
  module Permit
    if defined? CanTango::Permit
      sweetload :Role, :RoleGroup
    end
  end
end