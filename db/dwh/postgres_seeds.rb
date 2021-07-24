#require 'faker'
#
#FactQuote.delete_all
#
#factQuote = FactQuote.create(
#    :quoteid => rand_int(0, 10),
#    :creation => rand_time(2.days.ago),
#    :company_name => Faker::Lorem.sentence,
#    :email => Faker::Internet.email,
#    :nbelevator => rand_int(5, 555)
#)