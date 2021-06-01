class ChangeDatatypeEndDateOfSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :end_date, :date
  end
end
