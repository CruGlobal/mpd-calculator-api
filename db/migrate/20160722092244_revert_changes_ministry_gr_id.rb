class RevertChangesMinistryGrId < ActiveRecord::Migration

  def change

    add_column :ministry_question_sheets, :ministry_id, :integer

    remove_column :ministry_question_sheets, :ministry_gr_id

    add_index :ministry_question_sheets, [:ministry_id, :question_sheet_id], name: 'ministry_id_question_sheet'

  end
end
