
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

# spec/factories/publications.rb

FactoryBot.define do
  factory :publication do
    title { Faker::Lorem.word }
    body { Faker::Lorem.paragraphs }
    user_id 1
    contact_number { Faker::PhoneNumber.cell_phone }
    price { Faker::Number.number(6) }
  end
end
