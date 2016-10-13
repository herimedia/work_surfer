# frozen_string_literal: true

module WorkWave
  module API
    class TimeOfArrival
      class << self
        def get(route_id, territory_id: WorkWave::Client.default_territory_id)
          API.client.get("territories/#{territory_id}/toa/routes/#{route_id}")
        end

        def list(date: nil, territory_id: WorkWave::Client.default_territory_id, vehicle_id: nil)
          API.client.get("territories/#{territory_id}/toa/routes", { params: {
            date: date,
            territory_id: territory_id,
            vehicle: vehicle_id,
          }.reject { |k, v| v.nil? } })
        end
      end
    end
  end
end
