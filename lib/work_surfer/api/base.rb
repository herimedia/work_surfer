# frozen_string_literal: true

module WorkSurfer
  module API
    class Base
      class << self
        extend Forwardable

        def_delegator :client, :get

        def client
          Client.default_client
        end
      end
    end
  end
end
