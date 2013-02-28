class RemoveFormIdFromPatients < ActiveRecord::Migration
  def up
    remove_column :patients, :form_id
  end

  def down
    add_column :patients, :form_id, :integer
  end
end
