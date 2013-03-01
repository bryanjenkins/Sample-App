class ChangeUlcerHealedToDefaultTrueInMedicalHistory < ActiveRecord::Migration
  def up
    change_column :medical_histories, :ulcer_healed, :boolean, :default => true
  end

  def down
    change_column :medical_histories, :ulcer_healed, :boolean, :default => nil
  end
end
