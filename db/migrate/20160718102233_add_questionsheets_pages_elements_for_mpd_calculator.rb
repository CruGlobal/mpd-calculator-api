class AddQuestionsheetsPagesElementsForMpdCalculator < ActiveRecord::Migration

  def change
    add_column Fe::QuestionSheet.table_name, :description, :string
    add_column Fe::QuestionSheet.table_name, :is_global, :boolean
    add_column Fe::QuestionSheet.table_name, :assessment_formula, :string
    add_column Fe::QuestionSheet.table_name, :subsidy_formula, :string
    add_column Fe::QuestionSheet.table_name, :currency_symbol, :string
    add_column Fe::QuestionSheet.table_name, :currency_code, :string
    add_column Fe::QuestionSheet.table_name, :compliance, :string

    change_column Fe::QuestionSheet.table_name, :label, :string, limit: 200

    add_column Fe::Page.table_name, :total_mode, :string

    change_column Fe::Page.table_name, :label, :string, limit: 200

    add_column Fe::Element.table_name, :min, :boolean
    add_column Fe::Element.table_name, :max, :string
  end
end
