class RemoveDefaultForUlcerHealedInMedicalHistory < ActiveRecord::Migration
  def up
    change_column_default(:medical_histories, :ulcer_healed, nil)
  end

  def down
    change_column_default(:medical_histories, :ulcer_healed, true)
  end
end
