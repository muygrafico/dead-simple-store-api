class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :update, :destroy]

  def index
    @publications = Publication.search(params)
    render json: @publications, adapter: :json
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.user_id = @current_user.id
    if @publication.save!
      render json: {'status': 'publication created!'}
    else
      render json: {'status': 'publication not created'}
    end
  end

  def show
   render json: @publication, adapter: :json
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :body)
  end

  def set_publication
    @publication = Publication.find(params[:id])
  end
end
