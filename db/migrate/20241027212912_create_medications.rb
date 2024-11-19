class CreateMedications < ActiveRecord::Migration[7.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :duration
      t.string :amount

      t.timestamps
    end
  end
end
