class ChangeDescriptionMinIdNull < ActiveRecord::Migration

  def change

    change_column_null( :question_sheets, :description, false)
    change_column_null( :ministry_question_sheets, :ministry_id, false)

  end
end