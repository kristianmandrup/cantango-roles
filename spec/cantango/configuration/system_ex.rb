require 'cantango/configuration/shared/role_registry_ex'

shared_examples_for 'System' do  
  it_should_behave_like "Role Registry"
  
  describe 'system' do
    its(:system) { should == nil }
    
    decribe 'system=' do
      before do
        system = :my_sys
      end
      its(:system) { should == :my_sys }
    end
  end
end