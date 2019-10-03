class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birth_date
      t.string :phone_num

      t.timestamps
    end
  end
end
