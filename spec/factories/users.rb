
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do

  sequence :spy_email do |n|
    "00#{n}example@mail.com"
  end

  factory :user do
    name { Faker::StarWars.character }
    email { Faker::Internet.email }
    password '123123123'
  end
end
