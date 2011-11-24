require 'sugar-high/array'
require 'sugar-high/blank'
require 'hashie'
require 'sweetloader'

require 'cantango/core'

AutoLoader.namespaces = {:CanTango => 'cantango'}

module CanTango
  autoload_modules :Configuration, :Filter, :Helpers
end