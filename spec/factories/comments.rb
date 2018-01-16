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

# spec/factories/comments.rb
FactoryBot.define do
  factory :comment do
    body { Faker::StarWars.wookiee_sentence }
    user_id { Faker::Number.number(10) }
    publication_id { Faker::Number.number(10) }
  end
end
