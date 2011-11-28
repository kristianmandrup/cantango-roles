module CanTango
  class Configuration
    class Roles < System
      def system
        @system ||= :simple_roles
      end
            
      def default_system_apis
        {
          :troles       => {:list => :role_list, :has => :has_role?},
          :simple_roles => {:list => :roles_list}
        }
      end
    end
  end
end
