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

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
