module CanTango::Permit
  module Helper
    module RoleMatcher
      def role_match? candidate
        candidate.has_role? permit_name(self.class)
      end

      def role_group_match? candidate, group_name = nil
        candidate.is_in_group? permit_name(self.class)
      end
    end
  end
end
