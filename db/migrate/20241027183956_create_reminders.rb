class CreateReminders < ActiveRecord::Migration[7.2]
  def change
    create_table :reminders do |t|
      t.string :medication
      t.string :time
      t.string :amount

      t.timestamps
    end
  end
end
