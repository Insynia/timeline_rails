require 'timeline_rails/version'
require 'timeline_rails/view_helpers'
require 'timeline_rails/railtie' if defined?(Rails)

module TimelineRails
  def self.root
    File.dirname __dir__
  end
end
