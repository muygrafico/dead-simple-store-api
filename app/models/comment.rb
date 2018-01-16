# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  body           :text
#  publication_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#

class Comment < ApplicationRecord
  belongs_to :publication
  belongs_to :user

  validates_presence_of :body, :publication_id, :user_id
end
