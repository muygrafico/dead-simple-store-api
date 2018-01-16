# spec/models/publication_spec.rb
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

require 'rails_helper'

RSpec.describe Publication, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:photos).dependent(:destroy) }
  it { should have_many(:comments).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:user_id) }
end
