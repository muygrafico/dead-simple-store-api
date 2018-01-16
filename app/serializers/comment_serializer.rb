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

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :author_id
  belongs_to :user

  def author_id
    object.user_id
  end
end
