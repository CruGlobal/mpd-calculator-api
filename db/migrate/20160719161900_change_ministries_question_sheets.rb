class ChangeMinistriesQuestionSheets < ActiveRecord::Migration
  def change
    rename_table('ministries_question_sheets', 'ministry_question_sheets')
  end
end
