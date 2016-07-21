class ChangeMinistryNull < ActiveRecord::Migration

  def change

    change_column_null( :ministry_question_sheets, :ministry_id, false)
  end
end
