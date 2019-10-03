class CreateCustomerCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_checkins do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :checkin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
