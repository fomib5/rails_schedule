class ChangeDatatypeStartDateOfSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :start_date, :date
  end
end
