# frozen_string_literal: true

module WorkSurfer
  module API
    class Orders < Base
      class << self
        def add(*orders, territory_id: WorkSurfer::Client.default_territory_id, **options)
          client.post("territories/#{territory_id}/orders", {
            orders: orders,
          }.merge(options).to_json)
        end
      end
    end
  end
end
