# frozen_string_literal: true

module WorkSurfer
  module API
    class Base
      class << self
        def client
          Client.default_client
        end
      end
    end
  end
end
