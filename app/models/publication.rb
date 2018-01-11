# == Schema Information
#
# Table name: publications
#
#  id            :integer          not null, primary key
#  title         :string
#  body          :text
#  photo_id      :integer
#  contactnumber :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Publication < ApplicationRecord
  has_many :photos
  belongs_to :user
end
