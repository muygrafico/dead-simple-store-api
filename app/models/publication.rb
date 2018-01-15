# == Schema Information
#
# Table name: publications
#
#  id            :integer          not null, primary key
#  title         :string
#  body          :text
#  contactnumber :string
#  price         :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Publication < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  # validations
 validates_presence_of :title, :body, :user_id

  scope :filter_by_title, -> (keyword) {
    where('title like ?', "%#{ keyword }%")
  }

  scope :filter_by_price_floor, -> (price_floor) {
    where('price >= ?', price_floor)
  }

  scope :filter_by_price_ceil, -> (price_ceil) {
    where('price <= ?', price_ceil)
  }

  def self.search(params)
    pubs = Publication.all
    pubs = pubs.filter_by_title(params[:title]) if params[:title]
    pubs = pubs.filter_by_price_floor(params[:price_floor]) if params[:price_floor]
    pubs = pubs.filter_by_price_ceil(params[:price_ceil]) if params[:price_ceil]
    pubs
  end

end
