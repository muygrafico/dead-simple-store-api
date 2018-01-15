class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos, adapter: :json

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render json: {'status': 'photo created!'}
    else
      render json: {'status': 'photo not created'}
    end
  end

  def edit
    @photo = Photo.find(params[:id])
end

def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
        render json: {'status': 'photo edited!'}
    else
      render json: {'status': 'photo was not edited'}
    end
end

  private

  def photo_params
    process_image
    params.require(:photo).permit(:title, :image, :publication_id)
  end

  def process_image
    params[:photo][:publication_id] = 1
    params[:photo][:image] = Photo.process_base64(params[:photo][:image])
  end
end
