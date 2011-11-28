module CanTango
  module Helpers
    module RoleGroup
      def role_group_method name
        config.roles_groups.method_names[name]
      end

      def config
        CanTango.config
      end
    end
  end
end

