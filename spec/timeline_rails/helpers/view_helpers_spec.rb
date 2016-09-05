require 'spec_helper'

def count_substrings(str, sub)
  str.scan(sub).length
end

describe TimelineRails::ViewHelpers, type: :helper do
  include ActionView::Helpers
  include TimelineRails::ViewHelpers

  describe '#timeline_block' do
    context 'when no block provided' do
      subject { timeline_block(date: Date.today, title: 'Title', preview: 'Preview', url: '') }

      before :each do
        allow(I18n).to receive(:l) { '31 août 11h53' }
      end

      it 'has one timeline-block tag' do
        expect(count_substrings(subject, '<div class="timeline-block">')).to eq 1
      end

      it 'has one timeline-circle tag' do
        expect(count_substrings(subject, '<div class="timeline-circle">')).to eq 1
      end

      it 'has one timeline-content tag' do
        expect(count_substrings(subject, '<div class="timeline-content">')).to eq 1
      end
    end
  end

  describe '#timeline_wrapper' do
    context 'when no block provided' do
      subject { timeline_wrapper }

      it 'has one timeline tag' do
        expect(count_substrings(subject, '<div class="timeline">')).to eq 1
      end

      #TODO: Add check of yield
    end
  end
end