module Api
  module V2
    class PublicationsController < ApplicationController
      def index
        render json: {'status': 'Hello there!'}
      end
    end
  end
end
