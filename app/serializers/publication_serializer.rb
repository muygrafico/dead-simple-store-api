# == Schema Information
#
# Table name: publications
#
#  id            :integer          not null, primary key
#  title         :string
#  body          :text
#  contactnumber :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  price         :integer
#

class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :price
   has_many :photos
   has_many :comments
end
