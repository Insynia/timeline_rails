require 'spec_helper'

describe TimelineRails::Railtie do
  it 'includes the javascripts folder' do
    expect(Rails.application.config.assets.paths).to include(TimelineRails.root + '/vendor/assets/javascripts')
  end

  it 'includes the stylesheets folder' do
    expect(Rails.application.config.assets.paths).to include(TimelineRails.root + '/vendor/assets/stylesheets')
  end

  it 'precompile the scss file' do
    expect(Rails.application.config.assets.precompile.inspect).to include('timeline_rails.scss')
  end

  describe '.root' do
    it 'should return a string' do
      expect(TimelineRails.root).to be_a String
    end
  end
end