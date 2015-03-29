class CreateJoinTableDinnerUser < ActiveRecord::Migration
  def change
    create_join_table :dinners, :users do |t|
      # t.index [:dinner_id, :user_id]
      # t.index [:user_id, :dinner_id]
    end
  end
end
