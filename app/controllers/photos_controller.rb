class PhotosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :destroy]

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
  end

  def update
    if @photo.update_attributes(photo_params)
      render json: {'status': 'photo edited!'}
    else
      render json: {'status': 'photo was not edited'}
    end
  end

  def destroy
    if @photo.destroy
      render json: {'status': 'photo deleted!'}
    else
      render json: {'status': 'photo was not deleted'}
    end
  end

  private

  def set_todo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    process_image
    params.require(:photo).permit(:title, :image, :publication_id)
  end

  def process_image
    params[:photo][:image] = Photo.process_base64(params[:photo][:image])
  end
end
