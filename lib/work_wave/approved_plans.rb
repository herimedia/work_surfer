# frozen_string_literal: true

module WorkWave
  class ApprovedPlans < API
    class << self
      def get(route_id, territory_id: WorkWave::Client.default_territory_id)
        client.get("territories/#{territory_id}/approved/routes/#{route_id}")
      end

      def list(date: "today", territory_id: WorkWave::Client.default_territory_id)
        client.get("territories/#{territory_id}/approved/routes?date=#{date}")
      end
    end
  end
end
