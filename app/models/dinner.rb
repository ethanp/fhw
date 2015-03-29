class Dinner < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.this_week
    this_past_sunday = Date.today - Date.today.wday
    next_sunday = this_past_sunday + 7
    all.select { |x| x.date >= this_past_sunday && x.date < next_sunday }
  end
end
