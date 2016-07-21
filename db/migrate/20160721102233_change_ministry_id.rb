class ChangeMinistryId < ActiveRecord::Migration

  def change

    add_column :ministry_question_sheets, :min_id, :UUID

    change_table :ministry_question_sheets do |t|
      t.remove :ministry_id
      t.rename :min_id, :ministry_id
    end

    change_column_null( :ministry_question_sheets, :question_sheet_id, false )
    change_column_default( :ministry_question_sheets, :active, false )
    change_column_null( :ministry_question_sheets, :active, false)
  end
end
