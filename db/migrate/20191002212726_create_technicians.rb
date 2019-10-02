class CreateTechnicians < ActiveRecord::Migration[6.0]
  def change
    create_table :technicians do |t|
      t.string :name
      t.references :checkin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
