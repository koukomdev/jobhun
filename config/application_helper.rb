require 'active_support/dependencies.rb'
module ApplicationHelper
  def self.set_autoloads(config)
    ActiveSupport::Dependencies.autoload_paths << 'app/services'
    return self
  end
end
