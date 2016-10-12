# frozen_string_literal: true

module WorkWave
  class API
    class << self
      def client
        Client.default_client
      end
    end
  end
end
