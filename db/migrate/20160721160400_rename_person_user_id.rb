class RenamePersonUserId < ActiveRecord::Migration
  def change

    remove_columns Fe::Person.table_name, :user_id
    add_column Fe::Person.table_name, :key_guid, :uuid

  end
end
