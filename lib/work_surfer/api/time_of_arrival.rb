# frozen_string_literal: true

module WorkSurfer
  module API
    class TimeOfArrival < Base
      class << self
        def get(route_id, territory_id: WorkSurfer::Client.default_territory_id)
          client.get("territories/#{territory_id}/toa/routes/#{route_id}")
        end

        def list(date: nil, territory_id: WorkSurfer::Client.default_territory_id, vehicle_id: nil)
          client.get("territories/#{territory_id}/toa/routes", { params: {
            date: formatted_date(date),
            territory_id: territory_id,
            vehicle: vehicle_id,
          }.reject { |k, v| v.nil? } })
        end
      end
    end
  end
end
