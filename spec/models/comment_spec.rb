# spec/models/comment_spec.rb

# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :text
#  publication_id :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Comment, type: :model do

  it { should belong_to(:publication) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:publication_id) }

end
