puts "Deleting old data"

# AdoptionInterestNotification.destroy_all
# AdoptionInterest.destroy_all
Pet.destroy_all
Organization.destroy_all
User.destroy_all

puts "####### Creating organizations"

8.times do |i|
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

  Organization.last.image.attach(io: File.open("public/images/organizations/amigobicho.png"), filename: "amigobicho.png")
end

puts "####### Creating users"

User.create!(
  name: "Regular User",
  email: "user@boacausa.com",
  password: "123456789",
  role: :user,
)

puts "Creating user Regular"

User.create!(
  name: "Organization Volunteer User",
  email: "volunteer@boacausa.com",
  password: "123456789",
  role: :volunteer,
)

puts "Creating user Volunteer"

User.create!(
  name: "Organization Manager User",
  email: "manager@boacausa.com",
  password: "123456789",
  role: :manager,
)

puts "Creating user Manager"

User.create!(
  name: "Admin User",
  email: "admin@boacausa.com",
  password: "123456789",
  role: :admin,
)

puts "Creating user Admin"

# ngo_user = User.create!(
#   name: "User da ONG",
#   last_name: "Sobrenome",
#   email: "ngo@boacausa.com",
#   cpf: "43290061035",
#   password: "123456789",
#   group: :ngo
# )

# ngo_user.ngos << Ngo.first

puts "####### Creating pets"

organization_ids = Organization.all.pluck(:id)

20.times do
  pet_name = Faker::Name.first_name

  puts "Creating pet #{pet_name}"

  pet = Pet.create!(
    name: pet_name,
    age: "#{Random.rand(10)} #{["years", "months"].sample} old",
    description: Faker::Lorem.paragraph_by_chars(number: [100, 50, 200, 300, 500].sample),
    gender: ["f", "m"].sample,
    status: "active",
    organization_id: organization_ids.sample
  )

  random_image_number = Random.rand(6)
  pet.image.attach(io: File.open("public/images/pets/#{random_image_number}.png"), filename: "#{random_image_number}.png")
end
