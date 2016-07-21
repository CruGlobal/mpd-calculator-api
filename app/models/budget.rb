class Budget  < Fe::AnswerSheet


# Budget schema from fe
  # create_table "budgets", force: :cascade do |t|
  #   t.integer  "applicant_id"
  #   t.string   "status"
  #   t.datetime "submitted_at"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  #   t.string   "locale",       default: "en"
  #   t.index ["applicant_id"], name: "question_sheet_id", using: :btree
  # end

# Jon's .NET model

  # OK <Column Name="id" Type="System.Int32" DbType="Int NOT NULL IDENTITY" IsPrimaryKey="true" IsDbGenerated="true" CanBeNull="false" />
  # OK (applicant_id) <Column Name="person_id" Type="System.String" DbType="Char(36) NOT NULL" CanBeNull="false" />
  # <Column Name="assignment_id" Type="System.String" DbType="Char(36) NOT NULL" CanBeNull="false" />
  # <Column Name="ministry_id" Type="System.String" DbType="Char(36) NOT NULL" CanBeNull="false" />
  # <Column Name="mpd_def_id" Type="System.Int32" DbType="Int NOT NULL" CanBeNull="false" />
  # <Column Name="period_start" Type="System.String" DbType="Char(7) NOT NULL" CanBeNull="false" />
  # <Column Name="date_submitted" Type="System.DateTime" DbType="Date" CanBeNull="true" />
  # <Column Name="approved_by" Type="System.String" DbType="Char(36)" CanBeNull="true" />
  # <Column Name="approved_on" Type="System.DateTime" DbType="Date" CanBeNull="true" />
  # <Column Name="processed_by" Type="System.String" DbType="Char(36)" CanBeNull="true" />
  # <Column Name="processed_on" Type="System.DateTime" DbType="Date" CanBeNull="true" />
  # <Column Name="status" Type="System.Byte" DbType="TinyInt" CanBeNull="true" />
  # <Column Name="current_support_level" Type="System.Decimal" DbType="Money NOT NULL" CanBeNull="false" />
  # <Column Name="total_expense_budget" Type="System.Decimal" DbType="Money NOT NULL" CanBeNull="false" />
  # <Column Name="total_to_raise" Type="System.Decimal" DbType="Money NOT NULL" CanBeNull="false" />
  # <Column Name="subsidy" Type="System.Decimal" DbType="Money NOT NULL" CanBeNull="false" />
  # <Column Name="subsidy_formula" Type="System.String" DbType="NVarChar(200)" CanBeNull="true" />
  # <Column Name="assessment_formula" Type="System.String" DbType="NVarChar(200)" CanBeNull="true" />
  # <Column Name="assessment" Type="System.Decimal" DbType="Money NOT NULL" CanBeNull="false" />
  # <Column Name="spouse_id" Type="System.String" DbType="Char(36)" CanBeNull="true" />
  # <Column Name="approve_code" Type="System.String" DbType="Char(36)" CanBeNull="true" />
  # <Association Name="mpd_budget_mpd_budget_answer" Member="mpd_budget_answers" ThisKey="id" OtherKey="mpd_budget_id" Type="mpd_budget_answer" />
  # <Association Name="mpd_def_mpd_budget" Member="mpd_def" ThisKey="mpd_def_id" OtherKey="id" Type="mpd_def" IsForeignKey="true" />

end