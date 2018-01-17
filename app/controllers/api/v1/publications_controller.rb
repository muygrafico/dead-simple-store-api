module Api
  module V1
    class PublicationsController < ApplicationController
      before_action :set_publication, only: [:show, :update, :destroy]

      def index
        @publications = Publication.search(params)
        paginate json: @publications, adapter: :json
      end

      def create
        @publication = Publication.new(publication_params)
        @publication.user_id = @current_user.id
        if @publication.save!
          render json: {'status': 'publication created!'}, status: 201
        else
          render json: {'status': 'publication not created'}
        end
      end

      def show
        render json: @publication, adapter: :json
      end

      def update
        if @publication.update_attributes(publication_params)
          render json: {'status': 'publication updated!'}
        else
          render json: {'status': 'publication was not updated'}
        end
      end

      def destroy
        if @publication.destroy
          render json: {'status': 'publication deleted!'}
        else
          render json: {'status': 'publication was not deleted'}
        end
      end

      private

      def publication_params
        params.require(:publication).permit(:title, :body)
      end

      def set_publication
        @publication = Publication.find(params[:id])
      end
    end
  end
end
