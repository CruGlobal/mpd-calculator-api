class AddDefaultIsGlobalAndArchived < ActiveRecord::Migration

  def change

    #Changes to qustion_sheets table
    remove_columns Fe::QuestionSheet.table_name, :compliance, :currency_code, :currency_symbol, :subsidy_formula, :assessment_formula
    add_column Fe::QuestionSheet.table_name, :created_by, :string

    #Changes to ministries table
    add_column Fe::Ministry.table_name, :assessment_formula, :string
    add_column Fe::Ministry.table_name, :subsidy_formula, :string
    add_column Fe::Ministry.table_name, :currency_symbol, :string
    add_column Fe::Ministry.table_name, :currency_code, :string
    add_column Fe::Ministry.table_name, :compliance, :string


    #Adding mpd_ministry_meta table
    create_table ministries_question_sheets
    add_column(:ministries_question_sheets, :id, :integer )
    add_column(:ministries_question_sheets, :ministry_id, :integer)
    add_column(:ministries_question_sheets, :question_sheets_id, :integer)
    add_column(:ministries_question_sheets, :archived, :boolean)


    #Changes to elements table
    add_column Fe::Element.table_name, :page_id, :integer



  end
end
