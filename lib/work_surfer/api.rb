# frozen_string_literal: true

module WorkSurfer
  module API
    class << self
      def client
        Client.default_client
      end
    end
  end
end

require "work_surfer/api/approved_plans"
require "work_surfer/api/territories"
require "work_surfer/api/time_of_arrival"
