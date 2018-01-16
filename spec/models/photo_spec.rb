# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  image_data     :text
#  title          :string
#  publication_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Photo, type: :model do
  it { should belong_to(:publication) }
end
