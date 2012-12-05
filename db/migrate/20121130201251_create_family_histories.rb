class CreateFamilyHistories < ActiveRecord::Migration
  def change
    create_table :family_histories do |t|
      t.boolean :heart_disease
      t.boolean :lung_disease
      t.boolean :kidney_disease
      t.boolean :rheumatoid_arthritis
      t.boolean :cancer
      t.text :other

      t.timestamps
    end
  end
end
