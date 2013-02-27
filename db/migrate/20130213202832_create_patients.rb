class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :id
      t.string :name
      t.integer :form_id

      t.timestamps
    end

    add_index :patients, [:name, :form_id]
  end
end
