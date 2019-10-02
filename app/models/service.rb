class Service < ApplicationRecord
  belongs_to :checkin

  validates :name, presence: true
end
