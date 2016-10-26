# frozen_string_literal: true

module WorkSurfer
  module API
    class Base
      class << self
        protected

        def client
          Client.default_client
        end

        def formatted_date(date = nil)
          return date if date.to_s              == "today"
          return nil  if date.to_s.strip.length <= 0

          date =
            if date.respond_to?(:to_date)
              date.to_date
            else
              Date.parse(date.to_s)
            end

          date.strftime("%Y%m%d")
        end
      end
    end
  end
end
