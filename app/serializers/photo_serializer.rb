class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :filename

  def filename
    @image_data = JSON.parse object.image_data
    @image_data['id']
  end
end
