class RemoveRelationshipIdsFromForm < ActiveRecord::Migration
  def up
    remove_column :forms, :medical_history
    remove_column :forms, :family_history_id
  end

  def down
    add_column :forms, :family_history_id, :integer
    add_column :forms, :medical_history, :text
  end
end
