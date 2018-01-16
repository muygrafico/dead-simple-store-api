# == Schema Information
#
# Table name: publications
#
#  id             :integer          not null, primary key
#  title          :string
#  body           :text
#  contact_number :string
#  price          :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :price
   has_many :photos
   has_many :comments
end
