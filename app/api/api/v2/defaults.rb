module API
  module V2
    module Defaults
      extend ActiveSupport::Concern

      included do
        version 'v2'
        format :json
        formatter :json, Grape::Formatter::Jbuilder

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

      end

    end
  end
end
