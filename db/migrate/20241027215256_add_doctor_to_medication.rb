class AddDoctorToMedication < ActiveRecord::Migration[7.2]
  def change
    add_column :medications, :doctor, :string
  end
end
