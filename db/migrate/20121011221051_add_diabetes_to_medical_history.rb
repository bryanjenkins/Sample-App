class AddDiabetesToMedicalHistory < ActiveRecord::Migration
  def change
    add_column :medical_histories, :diabetes, :boolean
  end
end
