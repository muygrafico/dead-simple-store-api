User.create(
  email: 'example@mail.com',
  password: '123123123',
  name: 'Example Name'
)

Publication.create(
  title: Faker::Beer.name,
  body: Faker::Lorem.paragraphs,
  name: Faker::Name.name_with_middle
  user_id: 1
)
