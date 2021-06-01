class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :all_date
      
      t.timestamps
    end
  end
end
