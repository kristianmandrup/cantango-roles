module CanTango::Ability::Helper
  module Role
    include CanTango::Helpers::Role

    # return list roles the user has
    def roles
      return [] if !subject.respond_to?(roles_list_meth) || roles_of(subject).blank?
      roles_of(subject).flatten
    end

    protected

    def roles_of subject
      @subj_roles ||= subject.send(roles_list_meth)
    end
  end
end