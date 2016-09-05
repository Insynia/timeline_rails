require 'rails/railtie'

module TimelineRails
  class Railtie < Rails::Railtie
    initializer 'timeline_rails.view_helpers' do
      ActionView::Base.send :include, TimelineRails::ViewHelpers
    end

    initializer :assets do
      Rails.application.config.assets.precompile += %w{ timeline_rails.scss }
      Rails.application.config.assets.paths << TimelineRails.root + '/vendor/assets/javascripts'
      Rails.application.config.assets.paths << TimelineRails.root + '/vendor/assets/stylesheets'
    end
  end
end