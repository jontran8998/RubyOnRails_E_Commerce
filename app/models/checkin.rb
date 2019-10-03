class Checkin < ApplicationRecord
  has_many :technicians
  has_many :services
  belongs_to :customer

  validates :date, presence: true
end
