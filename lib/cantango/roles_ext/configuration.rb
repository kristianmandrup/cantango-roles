module CanTango
  class Configuration
    autoload_modules :RoleGroups, :Roles, :System

    module Registry
      autoload_modules :Role
    end
  end
end