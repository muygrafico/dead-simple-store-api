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

class Photo < ApplicationRecord
  include ImageUploader::Attachment.new(:image)  # adds an `image` virtual attribute

  def self.process_base64(base64_data)
    data = StringIO.new(Base64.decode64(base64_data['data']))
    data.class.class_eval { attr_accessor :original_filename, :content_type }
    data.original_filename = base64_data['filename']
    data.content_type = base64_data['content_type']
    data
  end
end
