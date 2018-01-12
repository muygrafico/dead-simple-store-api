# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  image_data     :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  title          :string
#  publication_id :integer
#

class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :filename

  def filename
    @image_data = JSON.parse object.image_data
    @image_data['id']
  end
end
