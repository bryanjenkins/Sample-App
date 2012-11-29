class ChangeFormsColumnsTypesAndNames < ActiveRecord::Migration
  def up
    rename_column :forms, :family_history, :family_history_string
    add_column :forms, :family_history_id, :integer
    remove_column :forms, :family_history_string
  end

  def down
    
  end
end
