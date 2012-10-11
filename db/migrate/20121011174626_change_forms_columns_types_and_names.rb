class ChangeFormsColumnsTypesAndNames < ActiveRecord::Migration
  def up
    change_column :forms, :family_history, :integer
    rename_column :forms, :family_history, :family_history_id
    change_column :forms, :medical_history, :integer
    rename_column :forms, :medical_history, :medical_history_id
  end

  def down
    change_column :forms, :family_history, :text
    rename_column :forms, :family_history_id, :family_history
    change_column :forms, :medical_history, :text
    rename_column :forms, :medical_history_id, :medical_history
  end
end
