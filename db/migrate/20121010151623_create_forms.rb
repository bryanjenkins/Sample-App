class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :allergies
      t.text :family_history
      t.text :medical_history
      t.text :medication
      t.text :surgery_history
      t.boolean :smoke
      t.boolean :alcohol

      t.timestamps
    end
  end
end
