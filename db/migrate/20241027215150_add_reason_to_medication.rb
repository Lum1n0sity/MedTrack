class AddReasonToMedication < ActiveRecord::Migration[7.2]
  def change
    add_column :medications, :reason, :string
  end
end
