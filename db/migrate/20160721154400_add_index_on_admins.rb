class AddIndexOnAdmins < ActiveRecord::Migration

  def change

    add_index :admins, [:ministry_id, :person_id], name: 'admin'

  end
end
