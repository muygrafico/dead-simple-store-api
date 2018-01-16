require "faker"

User.create(
  email: 'example@mail.com',
  password: '123123123',
  name: Faker::Name.name_with_middle,
)

10.times do
  Publication.create!(
    title: Faker::Beer.name,
    body: Faker::Lorem.paragraphs,
    contact_number: Faker::PhoneNumber.cell_phone,
    price: Faker::Number.number(6),
    user_id: 1
  )
end
