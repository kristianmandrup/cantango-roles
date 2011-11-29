module CanTango
  class Configuration
    class RoleGroups < System
      def system
        @system ||= :troles
      end
      
      def default_system_apis
        {
          :troles => {:list => :role_group_list}
        }
      end
    end
  end
end


