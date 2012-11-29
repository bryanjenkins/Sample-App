class ChangeFormsColumnsTypesAndNames < ActiveRecord::Migration
  # def up
  #   change_column :forms, :family_history, :integer
  #   rename_column :forms, :family_history, :family_history_id
  #   change_column :forms, :medical_history, :integer
  #   rename_column :forms, :medical_history, :medical_history_id
  # end

  # def down
  #   change_column :forms, :family_history, :text
  #   rename_column :forms, :family_history_id, :family_history
  #   change_column :forms, :medical_history, :text
  #   rename_column :forms, :medical_history_id, :medical_history
  # end
  def up
    case ActiveRecord::Base.connection
    when ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
        connection.execute(%q{
            alter table forms
            alter column family_history type integer using cast(family_history as integer),
            rename column family_history to family_history_id
        })
    when ActiveRecord::ConnectionAdapters::MySQLAdapter
        # MySQL version...
        def up
          change_column :forms, :family_history, :integer
          rename_column :forms, :family_history, :family_history_id
          change_column :forms, :medical_history, :integer
          rename_column :forms, :medical_history, :medical_history_id
        end
    end
  end
end
