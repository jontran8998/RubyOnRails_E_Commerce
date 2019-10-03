class CustomerCheckin < ApplicationRecord
  belongs_to :customer
  belongs_to :checkin
end
