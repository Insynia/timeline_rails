require 'spec_helper'

describe TimelineRails do
  it 'has a version number' do
    expect(TimelineRails::VERSION).not_to be nil
  end

  describe '.root' do
    it 'should return a string' do
      expect(TimelineRails.root).to be_a String
    end
  end
end
