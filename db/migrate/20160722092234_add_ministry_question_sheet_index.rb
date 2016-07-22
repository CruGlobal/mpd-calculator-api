class AddMinistryQuestionSheetIndex < ActiveRecord::Migration

  def change

    rename_column( :ministry_question_sheets, :ministry_id, :ministry_gr_id )
    add_index :ministry_question_sheets, [:ministry_gr_id, :question_sheet_id], name: 'ministry_gr_id_question_sheet'

  end
end
