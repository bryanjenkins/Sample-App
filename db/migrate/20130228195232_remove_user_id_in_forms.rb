class RemoveUserIdInForms < ActiveRecord::Migration
  def up
    remove_column :forms, :user_id
  end

  def down
    add_column :forms, :user_id, :integer
  end
end
