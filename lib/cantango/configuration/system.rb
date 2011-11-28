module CanTango
  class Configuration
    class System < Registry::Role
      include Singleton

      def system= name
        raise ArgumentError, "Must be a label" if !name.kind_of_label?
        @system = name.to_sym
      end

      def system_apis= system_apis
        raise ArgumentError, "Must be a hash fx :troles => :role_list, was: #{system_apis}" if !system_apis.kind_of?(Hash)
        @system_apis = system_apis
      end

      def system
        @system ||= default_system
      end

      def default_system
        nil
      end

      def add_systems system_apis
        raise ArgumentError, "Must be a hash fx :troles => :role_list, was: #{system_apis}" if !system_apis.kind_of?(Hash)
        self.system_apis.merge! system_apis
      end
      alias_method :add_system, :add_systems

      def system_api
        system_apis[system] || {}
      end
      
      def system_apis
        @system_apis ||= default_system_apis
      end
      
      def default_system_apis
        {}
      end
    end
  end
end