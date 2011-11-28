module CanTango
  class Configuration
    class RoleRegistry < Registry
      def only *names
        @onlies = names.select_labels
      end

      def onlies
        @onlies ||= []
      end

      def excluded
        @excluded ||= []
      end

      def exclude *names
        @excluded = names.select_labels
      end

      def filter?
        !(excluded + onlies).empty?
      end

      def clear!
        super
        @excluded = []
        @onlies = []
      end      
    end
  end
end

