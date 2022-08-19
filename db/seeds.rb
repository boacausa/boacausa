puts "Deleting old data"

# AdoptionInterestNotification.destroy_all
# AdoptionInterest.destroy_all
# Pet.destroy_all
Organization.destroy_all
# User.destroy_all

# puts "Creating NGOs"

10.times do |i|
  org_name = "#{i} NGO"

  puts "Creating organization #{org_name}"

  Organization.create!(
    name: org_name,
    phone_number1: Faker::PhoneNumber.phone_number,
    phone_number2: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    website: Faker::Internet.url,
    transparency_doc: Faker::Internet.url,
    registration: CNPJ.generate,
    date_start: Faker::Date.backward(days: 1000),
    active: true,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zipcode: Faker::Address.zip_code,
    address1: Faker::Address.street_address,
    address2: Faker::Address.building_number,
    description: Faker::Lorem.paragraph,
    deposit_description: "TODO"
  )

  Organization.last.image.attach(io: File.open("public/images/organization/amigobicho.png"), filename: "amigobicho.png")
end

# puts "Creating Users"

# User.create!(
#   name: "User admin",
#   last_name: "Sobrenome",
#   email: "admin@boacausa.com",
#   cpf: "22201745064",
#   password: "123456789",
#   group: :admin,
# )

# ngo_user = User.create!(
#   name: "User da ONG",
#   last_name: "Sobrenome",
#   email: "ngo@boacausa.com",
#   cpf: "43290061035",
#   password: "123456789",
#   group: :ngo
# )

# User.create!(
#   name: "User normal",
#   last_name: "Sobrenome",
#   email: "user@boacausa.com",
#   cpf: "07750110020",
#   password: "123456789",
# )

# ngo_user.ngos << Ngo.first

# puts "Creating Pets"

# ngo_ids = Ngo.all.pluck(:id)
# 7.times do
#   pet = Pet.create!(
#     name: Faker::Name.first_name,
#     age: Random.rand(10),
#     description: Faker::Lorem.paragraph_by_chars(number: [100, 50, 200, 300, 500].sample),
#     sex: ["f", "m"].sample,
#     active: true,
#     ngo_id: ngo_ids.sample
#   )

#   random_image_number = Random.rand(6)

#   pet.image.attach(io: File.open("public/images/pets/#{random_image_number}.png"),
#     filename: "#{random_image_number}.png")
#   pet.save
# end
