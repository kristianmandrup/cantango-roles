# Fix: from cantango-config
require 'cantango/configuration/shared/registry_ex'

shared_examples_for 'Role Registry' do
  it_should_behave_like "Registry"

  describe "exclude" do
    before do
      subject.exclude :admin
    end

    its(:excluded) { should include(:admin) }
  end
end

