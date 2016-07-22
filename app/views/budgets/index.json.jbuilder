json.array! @budgets do |budget|
  
  json.mpd_budget_id budget.id
  json.mpd_def_id budget.question_sheet.id
  json.person_id "9a199ab8-edb7-11e3-aa3c-12725f8f377c" #TODO Add dependencies in model - Check what id should be returned
  json.person_name "Vellacott, Jon"  #TODO Add dependencies in model
  json.assignment_id "01263d0a-b1f4-11e4-8861-12c37bb2d521" #TODO To be added to model
  json.ministry_id budget.question_sheet.ministry.gr_id
  json.period_start "2014-07" #TODO To be added to Budget model
  json.status budget.status
  json.assessment 120 #TODO To be added to Budget model
  json.assessment_formula budget.question_sheet.ministry.assessment_formula
  json.subsidy 0 #TODO To be added to Budget model
  json.subsidy_formula budget.question_sheet.ministry.subsidy_formula
  json.total_expense_budget 3300
  json.total_to_raise 3300 #TODO To be added to Budget model
  json.current_support_level 3000 #TODO To be added to Budget model

  json.answers budget.answers do |answer|
    json.mpd_answer_id answer.id
    json.mpd_question_id answer.question_id
    json.name answer.question.label
    json.value answer.value
    json.tax 300
  end

end

