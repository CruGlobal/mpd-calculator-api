class CreateMinistries < ActiveRecord::Migration[5.0]
  def change
    create_table :ministries do |t|
      t.uuid :gr_id
      t.string :name
      t.string :min_code
      t.string :gp_key

      t.timestamps null: false
    end


  end