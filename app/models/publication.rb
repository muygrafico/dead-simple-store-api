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

class Publication < ApplicationRecord
  has_many :photos
  has_many :comments
  belongs_to :user

  def search(params)
    result = self.where('title like ?'), params[:title] if params[:title]
  end
end
