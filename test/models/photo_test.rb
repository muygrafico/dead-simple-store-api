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

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
