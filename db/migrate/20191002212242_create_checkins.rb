class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.datetime :date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
