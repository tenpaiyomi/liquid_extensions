require 'solid'
require 'pony'

%w{filters}.each do |dir|
  Dir[File.join(File.dirname(__FILE__), 'liquid_extensions', dir, '*.rb')].each { |lib| require lib }
end

Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Encode)
# DEBUG
puts "[LocomotiveLiquidExtensions] tags and filters loaded"