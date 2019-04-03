class RecordDocument < Fixy::Document
  def build
    offer_1_valid = 'yes'
    offer_type_1 = 'coupon'
    offer_amt_1 = 'unknown'
    zip = ''
    st = ''
    city = ''
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
      address2 = Faker::Address.secondary_address
      address1 = Faker::Address.street_address
      city = Faker::Address.city
      st = Faker::Address.state
      zip = Faker::Address.postcode
      append_record AddressRecord.new(offer_1_valid, offer_type_1, offer_amt_1, zip, st, city, address2, address1, last, first, recgrp, offer_id, winet_id)
      recgrp += 1
      offer_id += 2
      winet_id += 3
    end
  end
end
