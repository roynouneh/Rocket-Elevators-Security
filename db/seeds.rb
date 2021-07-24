require 'faker'
require 'date'
require 'json'

# user_list = [
#   {
#     email: "nicolas.genest@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "nadya.fortier@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "martin.chantal@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "mathieu.houde@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "patrick.thibault@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "david.boutin@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "mathieu.lortie@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "thomas.carrier@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "serge.savoie@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "francis.patry-jessop@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "mathieu.lefrancois@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "david.larochelle@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "nicolas.pineault@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "david.amyot@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "remi.gagnon@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "timothy.wever@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "kiril.kleinerman@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "emmanuela.derilus@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "abdul.akeeb@codebozz.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "krista.sheely@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   },
#   {
#     email: "jonathan.murray@codeboxx.biz",
#     password: "123456",
#     password_confirmation: "123456"
#   }
# ]

employeeList = [
  {
    first_name: "Nicolas",
    last_name: "Genest",
    title: "CEO",
    email:"nicolas.genest@codeboxx.biz",
    #user: user1
  },
  {
    first_name: "Nadya",
    last_name: "Fortier",
    title: "Director",
    email:"nadya.fortier@codeboxx.biz",
    #user: user2
  },
  {
    first_name: "Martin",
    last_name: "Chantal",
    title: "Assistant Director",
    email:"martin.chantal@codeboxx.biz",
    #user: user3
  },
  {
    first_name: "Mathieu",
    last_name: "Houde",
    title: "Captain",
    email:"mathieu.houde@codeboxx.biz",
    #user: user4
  },
  {
    first_name: "Patrick",
    last_name: "Thibault",
    title: "Captain",
    email:"patrick.thibault@codeboxx.biz",
    #user: user5
  },
  {
    first_name: "David",
    last_name: "Boutin",
    title: "Engineer",
    email:"david.boutin@codeboxx.biz",
    #user: user6
  },
  {
    first_name: "Mathieu",
    last_name: "Lortie",
    title: "Engineer",
    email:"mathieu.lortie@codeboxx.biz",
    #user: user7
  },
  {
    first_name: "Thomas",
    last_name: "Carrier",
    title: "Engineer",
    email:"thomas.carrier@codeboxx.biz",
    #user: user8,
  },
  {
    first_name: "Serge",
    last_name: "Savoie",
    title: "Engineer",
    email:"serge.savoie@codeboxx.biz",
    #user: user9,
  },
  {
    first_name: "Francis",
    last_name: "Patry-Jessop",
    title: "Engineer",
    email:"francis.patry-jessop@codeboxx.biz",
    #user: user10,
  },
  {
    first_name: "Mathieu",
    last_name: "Lefrancois",
    title: "Engineer",
    email:"mathieu.lefrancois@codeboxx.biz",
    #user: user11,
  },
  {
    first_name: "David",
    last_name: "Larochelle",
    title: "Engineer",
    email:"david.larochelle@codeboxx.biz",
    #user: user12,
  },
  {
    first_name: "Nicolas",
    last_name: "Pineault",
    title: "Engineer",
    email:"nicolas.pineault@codeboxx.biz",
    #user: user13,
  },
  {
    first_name: "David",
    last_name: "Amyot",
    title: "Engineer",
    email:"david.amyot@codeboxx.biz",
    #user: user14,
  },
  {
    first_name: "Remi",
    last_name: "Gagnon",
    title: "Engineer",
    email:"remi.gagnon@codeboxx.biz",
    #user: user15,
  },
  {
    first_name: "Timothy",
    last_name: "Wever",
    title: "Developper",
    email:"timothy.wever@codeboxx.biz",
    #user: user16,
  },
  {
    first_name: "Kiril",
    last_name: "Kleinerman",
    title: "Developper",
    email:"kiril.kleinerman@codeboxx.biz",
    #user: user17,
  },
  {
    first_name: "Emmanuela",
    last_name: "Derilus",
    title: "Developper",
    email:"emmanuela.derilus@codeboxx.biz",
    #user: user18,
  },
  {
    first_name: "Abdul",
    last_name: "Akeeb",
    title: "Developper",
    email:"abdul.akeeb@codebozz.biz",
    #user: user19,
  },
  {
    first_name: "Krista",
    last_name: "Sheely",
    title: "Developper",
    email:"krista.sheely@codeboxx.biz",
    #user: user20,
  },
  {
    first_name: "Jonathan",
    last_name: "Murray",
    title: "Developper",
    email:"jonathan.murray@codeboxx.biz",
    #user: user21,
  },
]

# ############################## FAKER ADDR ###############################
# 25.times do
#   address = Address.create(
#     :address_type => addressType.sample,
#     :status => addressStatus.sample,
#     :entity => Faker::Lorem.word,
#     :number_street => Faker::Address.street_address,
#     :suite_apartment => Faker::Address.secondary_address,
#     :city => Faker::Address.city,
#     :postal_code => Faker::Address.zip_code,
#     :country => Faker::Address.country,
#     :notes => Faker::Lorem.paragraph(sentence_count: 2)
#   )
############################## FAKER ADDR ###############################

Elevator.delete_all
Column.delete_all #1 each do
Battery.delete_all #1 each do
Buildingdetail.delete_all
Building.delete_all #1 each do
Customer.delete_all
Employee.delete_all
User.delete_all
Address.delete_all #5 each do
Quote.delete_all #1 each do
Lead.delete_all #1 each do

#lead seed
# 15.times do
#   lead = Lead.create(
#     :full_name => Faker::Name.name,
#     :company_name => Faker::Company.name,
#     :email => Faker::Internet.email,
#     :phone => Faker::PhoneNumber.phone_number,
#     :project_name => Faker::Lorem.word,
#     :project_description => Faker::Lorem.sentence,
#     :department => Faker::Company.industry,
#     :message => Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
#     #:attachment => Faker::File.file_name(dir: 'attachments/'),
#      :attachment => 0,
#     :date_of_request => :created_at
#   #:date => Faker::Date.between(from: 100.days.ago, to: Date.today)
#   )
# end

# quoteType = ["Residential", "Corporate", "Commercial", "Hybrid"]
# 5.times do
#   quote = Quote.create(
#     :type_of_building => quoteType,
#     :number_of_floors => Faker::Number.number(digits: 2),
#     :number_of_apartments => Faker::Number.number(digits: 2),
#     :number_of_basements => Faker::Number.number(digits: 2),
#     :number_of_companies => Faker::Number.number(digits: 2),
#     :number_of_parking_spots => Faker::Number.number(digits: 2),
#     :number_of_elevators => Faker::Number.within(range: 1..4),
#     :number_of_corporations => Faker::Number.number(digits: 2),
#     :maximum_occupancy => Faker::Number.number(digits: 2),
#     :business_hours => Faker::Number.number(digits: 2),
#     :product_line => Faker::Lorem.word,
#     :elevator_amount => Faker::Number.decimal(l_digits: 4),
#     :elevator_unit_price => Faker::Number.decimal(l_digits: 3),
#     :elevator_total_price => Faker::Number.decimal(l_digits: 5),
#     :installation_fees => Faker::Number.decimal(l_digits: 3),
#     :final_price => Faker::Number.decimal(l_digits: 6),
#     :created_at => :created_at,
#     :updated_at => :updated_at
#   )
# end

#address seed
addressType = ["Home", "Business", "Billing", "Shipping"]
addressStatus = ["Active", "Inactive"]
addressEntity = ["Building", "Customer"]
file = File.read("db/addresses.json")
realAddr = JSON.parse(file)
#pp realAddr["addresses"]
realAddr["addresses"].first(1).each do |addr|
  #25.times do
  #pp addr.to_yaml
  address = Address.create(
    :address_type => addressType.sample,
    :status => addressStatus.sample,
    :entity => addressEntity.sample,
    :number_street => addr["address1"],
    :suite_apartment => Faker::Address.secondary_address,
    :city => addr["city"],
    :postal_code => addr["postalCode"],
    :country => "USA",
    :notes => Faker::Lorem.paragraph(sentence_count: 2)
  )

# ############################## FAKER ADDR ###############################
# 25.times do
#   address = Address.create(
#     :address_type => addressType.sample,
#     :status => addressStatus.sample,
#     :entity => Faker::Lorem.word,
#     :number_street => Faker::Address.street_address,
#     :suite_apartment => Faker::Address.secondary_address,
#     :city => Faker::Address.city,
#     :postal_code => Faker::Address.zip_code,
#     :country => Faker::Address.country,
#     :notes => Faker::Lorem.paragraph(sentence_count: 2)
#   )
  ############################## FAKER ADDR ###############################

  employeeList.each do |e|
    user = User.create(
      :email => e[:email],
      :password => "123456",
      :password_confirmation => "123456"
    )

    employee = Employee.create(
      :first_name => e[:first_name],
      :last_name => e[:last_name],
      :title => e[:title],
      #:user => employee[:user]
      :user => user
    )

    #customer seed
    5.times do
      customer = Customer.create(
        #:user_id => :user[:id],
        #:user_id => 0+index,
        :user_id => user.id,
        :customer_creation_date => Faker::Date.between(from: 100.days.ago, to: Date.today),
        :company_name => Faker::Company.name,
        #:address_id => 0+index,
        :address_id => address.id,
        :contact_full_name => Faker::Name.name,
        :contact_phone => Faker::PhoneNumber.phone_number,
        :contact_email => Faker::Internet.email,
        :company_description => Faker::Lorem.paragraph(sentence_count: 8, supplemental: true),
        :service_technical_authority => Faker::Name.name,
        :tech_auto_phone => Faker::PhoneNumber.phone_number,
        :tech_manager_email => Faker::Internet.email
      )
    
      #building seed
      5.times do
      building = Building.create(
        :customer_id => customer.id,
        :address_id => address.id,
        :admin_name => Faker::Name.name,
        :admin_email => Faker::Internet.email,
        :admin_phone => Faker::PhoneNumber.phone_number,
        :tech_contact_name => Faker::Name.name,
        :tech_contact_email => Faker::Internet.email,
        :tech_contact_phone => Faker::PhoneNumber.phone_number
      )
      #building details
      1.times do
        buildingDetail = Buildingdetail.create(
          :building_id => building.id,
          :information => Faker::Lorem.word,
          :information_value => Faker::Lorem.word
        )
      end

      #battery
      buildingType = ["Residential", "Commercial", "Corporate", "Hybrid"].sample
      batteryStatus = ["Active", "Inactive"].sample
      1.times do
        battery = Battery.create(
          #:building_id => :Buildings[:building_id],
          #:building_id => 0+index,
          :building_id => building.id,
          :building_type => buildingType,
          :status => batteryStatus,
          :employee_id => rand(Employee.first.id..Employee.last.id),#.sample
          #:employee_id => 0+index,
          :commission_date => Faker::Date.between(from: 1000.days.ago, to: Date.today),
          :last_inspection => Faker::Date.between(from: 100.days.ago, to: Date.today),
          :certificate_of_operations => Faker::Types.rb_string,
          :information => Faker::Lorem.paragraph(sentence_count: 4),
          :notes => Faker::Lorem.paragraph(sentence_count: 8, supplemental: true)
        )

          #column
        columnType = ["Residential", "Commercial", "Corporate"].sample
        columnStatus = ["Active", "Inactive"].sample
        rand(1..4).times do
          column = Column.create(
            #:battery_id => :Battery[:battery_id],
            #:battery_id => 0+index,
            :battery_id => battery.id,
            :type_of_column => columnType,
            :number_of_floors_served => Faker::Number.non_zero_digit,
            :status => columnStatus,
            :information => Faker::Lorem.paragraph(sentence_count: 4),
            :notes => Faker::Lorem.paragraph(sentence_count: 8, supplemental: true)
          )

          elevatorModel = ["Standard", "Premium", "Excelium"].sample
          elevatorType = ["Residential", "Commercial", "Corporate"].sample
          elevatorStatus = ["Active", "Inactive"].sample
          rand(2..4).times do
            elevator = Elevator.create(
              #:column_id => :Column[:column_id],
              :column_id => column.id,
              #:column_id => 0+index,
              :serial_number => Faker::Number.leading_zero_number(digits: 10),
              :model => elevatorModel,
              :type_of_elevator => elevatorType,
              :status => elevatorStatus,
              :date_of_commissioning => Faker::Date.between(from: 1000.days.ago, to: Date.today),
              :date_of_last_inspection => Faker::Date.between(from: 100.days.ago, to: Date.today),
              :certificate_of_inspection => Faker::Lorem.sentence,
              :info => Faker::Lorem.paragraph(sentence_count: 4),
              :notes => Faker::Lorem.paragraph(sentence_count: 4, supplemental: true)
            )
          end
        end
      end
    end
  end
end
end #I can't tell why this end is needed

#end
#   end
#   end
# end

# user1 = User.create(email: "nicolas.genest@codeboxx.biz", password: "123456", password_confirmation: "123456")
# user2 = User.create(email: "nadya.fortier@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user3 = User.create(email: "martin.chantal@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user4 = User.create(email: "mathieu.houde@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user5 = User.create(email: "patrick.thibault@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user6 = User.create(email: "david.boutin@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user7 = User.create(email: "mathieu.lortie@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user8 = User.create(email: "thomas.carrier@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user9 = User.create(email: "serge.savoie@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user10 = User.create(email: "francis.patry-jessop@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user11 = User.create(email: "mathieu.lefrancois@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user12 = User.create(email: "david.larochelle@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user13 = User.create(email: "nicolas.pineault@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user14 = User.create(email: "david.amyot@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user15 = User.create(email: "remi.gagnon@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user16 = User.create(email: "timothy.wever@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user17 = User.create(email: "kiril.kleinerman@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user18 = User.create(email: "emmanuela.derilus@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user19 = User.create(email: "abdul.akeeb@codebozz.biz",  password: "123456", password_confirmation: "123456")
# user20 = User.create(email: "krista.sheely@codeboxx.biz",  password: "123456", password_confirmation: "123456")
# user21 = User.create(email: "jonathan.murray@codeboxx.biz",  password: "123456", password_confirmation: "123456")

# Employee.create(first_name:"Nicolas", last_name:"Genest", title:"CEO", user:user1)
# Employee.create(first_name:"Nadya", last_name:"Fortier", title:"Director", user:user2)
# Employee.create(first_name:"Martin", last_name:"Chantal", title:"Assistant Director", user:user3)
# Employee.create(first_name:"Mathieu", last_name:"Houde", title:"Captain", user:user4)
# Employee.create(first_name:"Patrick", last_name:"Thibault", title:"Captain", user:user5)
# Employee.create(first_name:"David", last_name:"Boutin", title:"Engineer", user:user6)
# Employee.create(first_name:"Mathieu", last_name:"Lortie", title:"Engineer", user:user7)
# Employee.create(first_name:"Thomas", last_name:"Carrier", title:"Engineer", user:user8)
# Employee.create(first_name:"Serge", last_name:"Savoie", title:"Engineer", user:user9)
# Employee.create(first_name:"Francis", last_name:"Patry-Jessop", title:"Engineer", user:user10)
# Employee.create(first_name:"Mathieu", last_name:"Lefrancois", title:"Engineer", user:user11)
# Employee.create(first_name:"David", last_name:"Larochelle", title:"Engineer", user:user12)
# Employee.create(first_name:"Nicolas", last_name:"Pineault", title:"Engineer", user:user13)
# Employee.create(first_name:"David", last_name:"Amyot", title:"Engineer", user:user14)
# Employee.create(first_name:"Remi", last_name:"Gagnon", title:"Engineer", user:user15)
# Employee.create(first_name:"Timothy", last_name:"Wever", title:"Developper", user:user16)
# Employee.create(first_name:"Kiril", last_name:"Kleinerman", title:"Developper", user:user17)
# Employee.create(first_name:"Emmanuela", last_name:"Derilus", title:"Developper", user:user18)
# Employee.create(first_name:"Abdul", last_name:"Akeeb", title:"Developper", user:user19)
# Employee.create(first_name:"Krista", last_name:"Sheely", title:"Developper", user:user20)
# Employee.create(first_name:"Jonathan", last_name:"Murray", title:"Developper", user:user21)

################################################################################################

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker::Config.locale = 'en-US'
# 20.times do |index|
#     employee =  Employee.create!(
#         user_id: 0+index,
#         last_name: Faker::Name.last_name,
#         first_name: Faker::Name.first_name,
#         title: "Employee"
#     )
# end
# Employee.delete_all
# Employee.create(user_id:1, first_name:"Nicolas", last_name:"Genest", title:"CEO")
# Employee.create(user_id:2, first_name:"Nadya", last_name:"Fortier", title:"Director")
# Employee.create(user_id:3, first_name:"Martin", last_name:"Chantal", title:"Assistant Director")
# Employee.create(user_id:4, first_name:"Mathieu", last_name:"Houde", title:"Captain")
# Employee.create(user_id:5, first_name:"Patrick", last_name:"Thibault", title:"Captain")
# Employee.create(user_id:6, first_name:"David", last_name:"Boutin", title:"Engineer")
# Employee.create(user_id:7, first_name:"Mathieu", last_name:"Lortie", title:"Engineer")
# Employee.create(user_id:8, first_name:"Thomas", last_name:"Carrier", title:"Engineer")
# Employee.create(user_id:9, first_name:"Serge", last_name:"Savoie", title:"Engineer")
# Employee.create(user_id:10, first_name:"Francis", last_name:"Patry-Jessop", title:"Engineer")
# Employee.create(user_id:11, first_name:"Mathieu", last_name:"Lefrancois", title:"Engineer")
# Employee.create(user_id:12, first_name:"David", last_name:"Larochelle", title:"Engineer")
# Employee.create(user_id:13, first_name:"Nicolas", last_name:"Pineault", title:"Engineer")
# Employee.create(user_id:14, first_name:"David", last_name:"Amyot", title:"Engineer")
# Employee.create(user_id:15, first_name:"Remi", last_name:"Gagnon", title:"Engineer")
# Employee.create(user_id:16, first_name:"Timothy", last_name:"Wever", title:"Developper")
# Employee.create(user_id:17, first_name:"Kiril", last_name:"Kleinerman", title:"Developper")
# Employee.create(user_id:18, first_name:"Emmanuela", last_name:"Derilus", title:"Developper")
# Employee.create(user_id:19, first_name:"Abdul", last_name:"Akeeb", title:"Developper")
# Employee.create(user_id:20, first_name:"Krista", last_name:"Sheely", title:"Developper")
# Employee.create(user_id:21, first_name:"Jonathan", last_name:"Murray", title:"Developper")

# user_list.each do |user_id, email, password|
#     User.create(user_id: user_id, email: email, password: "password", password_confirmation: "password")
# end