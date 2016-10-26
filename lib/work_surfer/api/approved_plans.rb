# frozen_string_literal: true

module WorkSurfer
  module API
    class ApprovedPlans < Base
      class << self
        def get(route_id, territory_id: WorkSurfer::Client.default_territory_id)
          client.get("territories/#{territory_id}/approved/routes/#{route_id}")
        end

        def list(date: "today", territory_id: WorkSurfer::Client.default_territory_id)
          client.get("territories/#{territory_id}/approved/routes?date=#{formatted_date(date)}")
        end
      end
    end
  end
end
