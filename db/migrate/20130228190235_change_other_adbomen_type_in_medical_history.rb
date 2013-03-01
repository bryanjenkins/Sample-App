class ChangeOtherAdbomenTypeInMedicalHistory < ActiveRecord::Migration
  def up
    change_column :medical_histories, :other_abdomen, :text
  end

  def down
    change_column :medical_histories, :other_abdomen, :boolean
  end
end
