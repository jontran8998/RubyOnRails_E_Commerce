class Customer < ApplicationRecord
  paginates_per 8
  has_many :customer_checkins
  has_many :checkins, through: :customer_checkins
  validates :first_name, :last_name, :email, :birth_date, :phone_num, presence: true
  # validates :phone_num, numericality: { only_integer: true }

  def self.search(search)
    if search
      where(["first_name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
