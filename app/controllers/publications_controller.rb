class PublicationsController < ApplicationController
  def index
    render json: {'someKey': 'someValue'}
  end
end
