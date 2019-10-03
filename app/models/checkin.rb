class Checkin < ApplicationRecord
  has_many :technicians
  has_many :services
  has_many :customer_checkins
  has_many :customers, through: :customer_checkins
  belongs_to :customer

  validates :date, presence: true
end
