require 'action_view'

module TimelineRails
  module ViewHelpers
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Context

    def timeline_wrapper(&block)
      output = '<div class="timeline">'
      output << capture(&block) if block_given?
      output << '</div>'
      output.html_safe
    end

    def timeline_block(date: nil, title: nil, preview: nil, url: nil, &block)
      if block_given?
        capture(&block).html_safe
      else
        "<div class=\"timeline-block\">
          <div class=\"timeline-circle\">
            <span>#{date.strftime('%d/%m')}</span>
          </div>
          <a href=\"#{url}\">
              <div class=\"timeline-content\">
                <h2>#{title}</h2>
                <p>#{preview}</p>
                <span class=\"cd-date\">#{::I18n.l date, format: :short}</span>
              </div>
          </a>
        </div>".html_safe
      end
    end
  end
end