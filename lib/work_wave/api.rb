# frozen_string_literal: true

module WorkWave
  module API
    class << self
      def client
        Client.default_client
      end
    end
  end
end

require "work_wave/api/approved_plans"
require "work_wave/api/time_of_arrival"
