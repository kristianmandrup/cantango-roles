module CanTango
  module Helpers
    module Role
      def role_method name
        config.roles.method_names[name]
      end
      
      def config
        CanTango.config
      end
    end
  end
end

