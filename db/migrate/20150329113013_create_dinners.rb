class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :name
      t.date :date

      t.timestamps null: false
    end
  end
end
