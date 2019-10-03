class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
