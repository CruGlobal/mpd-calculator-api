class AddDefaultIsGlobalAndArchived < ActiveRecord::Migration

  def change

    change_column Fe::QuestionSheet.table_name, :is_global, :boolean, default: false

    #Default archived=true means active=false
    change_column Fe::QuestionSheet.table_name, :archived, :boolean, default: true

  end
end
