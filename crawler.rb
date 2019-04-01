require 'nokogiri'
require 'open-uri'
require 'csv'
require 'Faker'

URL = 'https://www.realtor.com/realestateandhomes-search/Worcester-County_MA'
page = Nokogiri::HTML(open(URL))

data = page.css("property-address")
puts data.css("listing-city").text.strip
offer_1_valid = 'yes'
offer_type_1 = 'coupon'
offer_amt_1 = 'unknown'
zip = '02631'
st = 'MA'
city = 'Brewster'
address2 = ''
address1 = ''
last = ''
first = ''
recgrp = 1
offer_id = 1
winet_id = 1


1000.times do |record|
  last = Faker::Name.last_name
  first = Faker::Name.first_name
  recgrp.to_s
  offer_id.to_s
  winet_id.to_s
  record = [offer_1_valid, offer_type_1, offer_amt_1, zip, st, city, address2, address1, last, first, recgrp, offer_id, winet_id]
  CSV.open("record.csv", "a") do |csv|
    # csv<< record
  end
  recgrp += 1
  offer_id += 2
  winet_id += 3
end
