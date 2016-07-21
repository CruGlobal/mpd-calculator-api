class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.integer  :ministry_id
      t.integer  :person_id
      t.timestamps
    end
  end
end
