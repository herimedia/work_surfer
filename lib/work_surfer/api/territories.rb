# frozen_string_literal: true

module WorkSurfer
  module API
    class Territories < Base
      class << self
        def list
          get("territories")
        end
      end
    end
  end
end
