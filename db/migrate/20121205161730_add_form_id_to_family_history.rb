class AddFormIdToFamilyHistory < ActiveRecord::Migration
  def change
    add_column :family_histories, :form_id, :integer
  end
end
