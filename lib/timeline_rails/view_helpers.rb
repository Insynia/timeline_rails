require 'action_view'

module TimelineRails
  module ViewHelpers
    include ::ActionView::Helpers::OutputSafetyHelper

    def timeline_wrapper(&block)
      output = '<div class="timeline">'
      output << capture(&block)
      output << '</div>'
      raw(output)
    end

    def timeline_block(date:, title:, preview:, url:)
      if block_given?
        yield
      else
        raw("<div class=\"timeline-block\">
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
        </div>")
      end
    end
  end
end