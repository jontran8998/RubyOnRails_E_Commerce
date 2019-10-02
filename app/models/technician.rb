class Technician < ApplicationRecord
  belongs_to :checkin

  validates :name, presence: true
end
