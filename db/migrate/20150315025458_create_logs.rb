class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :BedInTime
      t.integer :SleepInTime
      t.integer :WakeUpTime
      t.integer :BedOutTime
      t.string :Quority

      t.timestamps null: false
    end
  end
end
