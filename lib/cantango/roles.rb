require 'sugar-high/array'
require 'sugar-high/blank'
require 'hashie'
require 'sweetloader'

require 'cantango/core'
require 'cantango/config'

AutoLoader.mode = :require

module CanTango
  autoload_scope :ns => {:CanTango => 'cantango/roles'} do 
    autoload_modules :Configuration, :Filter, :Helpers
  end
end