json.array! @budgets do |budget|
  
  json.mpd_budget_id budget.id
  json.mpd_def_id 1
  json.person_id "9a199ab8-edb7-11e3-aa3c-12725f8f377c"
  json.person_name "Vellacott, Jon"
  json.assignment_id "01263d0a-b1f4-11e4-8861-12c37bb2d521"
  json.ministry_id "6777ba94-d6ac-11e3-b692-12725f8f377c"
  json.period_start "2014-07"
  json.status "Draft"
  json.assessment 120
  json.assessment_formula 120
  json.subsidy 0
  json.subsidy_formula "%0"
  json.total_expense_budget 3300
  json.total_to_raise 3300
  json.current_support_level 3000

  json.answers budget.answers do |answer|
    json.mpd_answer_id answer.id
    json.mpd_question_id answer.question_id
    json.name answer.question.label
    json.value answer.value
    json.tax 300
  end

end
