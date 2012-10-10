class AddIndexToForms < ActiveRecord::Migration
  def change
    add_index :forms, [:user_id, :created_at]
  end
end
