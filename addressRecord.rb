class AddressRecord < Fixy::Record
  attr_accessor :offer_1_valid, :offer_type_1, :offer_amt_1, :zip, :st, :city, :address2, :address1, :last, :first, :recgrp, :offer_id, :winet_id

  include Fixy::Formatter::Alphanumeric

  set_record_length 250

  field :offer_1_valid, 10, '1-10',:alphanumeric
  field :offer_type_1, 10, '11-20',:alphanumeric
  field :offer_amt_1, 10, '21-30',:alphanumeric
  field :zip, 10, '31-40',:alphanumeric
  field :st, 10, '41-50',:alphanumeric
  field :city, 20, '51-70',:alphanumeric
  field :address2, 50, '71-120',:alphanumeric
  field :address1, 50, '121-170',:alphanumeric
  field :last, 25, '171-195',:alphanumeric
  field :first, 25, '196-220',:alphanumeric
  field :recgrp, 10, '221-230',:alphanumeric
  field :offer_id, 10, '231-240',:alphanumeric
  field :winet_id, 10, '241-250',:alphanumeric

  def initialize(offer_1_valid, offer_type_1, offer_amt_1, zip, st, city, address2, address1, last, first, recgrp, offer_id, winet_id)
    @offer_1_valid = offer_1_valid
    @offer_type_1 = offer_type_1
    @offer_amt_1 = offer_amt_1
    @zip = zip
    @st = st
    @city = city
    @address2 = address2
    @address1 = address1
    @last = last
    @first = first
    @recgrp = recgrp
    @offer_id = offer_id
    @winet_id = winet_id
  end 
end
