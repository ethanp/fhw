class ChangeDinnerNameNotNull < ActiveRecord::Migration
  def change
    Dinner.all.each do |u|
      u.name = "DEFAULT"
      u.save!
    end
    change_column_null :dinners, :name, false
  end
end
