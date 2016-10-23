# frozen_string_literal: true

module WorkWave
  module API
    class Territories
      class << self
        def list
          API.client.get("territories")
        end
      end
    end
  end
end
