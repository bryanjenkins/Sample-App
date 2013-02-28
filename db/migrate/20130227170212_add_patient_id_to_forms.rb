class AddPatientIdToForms < ActiveRecord::Migration
  def change
    add_column :forms, :patient_id, :integer
  end
end
