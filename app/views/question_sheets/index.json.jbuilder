json.array! @question_sheets do |question_sheet|
json.mpd_def_id question_sheet.id
  json.name question_sheet.label
  json.description question_sheet.label
  json.is_global question_sheet.is_global
  json.active !question_sheet.archived
  json.assessment_formula question_sheet.ministry.assessment_formula
  json.subsidy_formula question_sheet.ministry.subsidy_formula
  json.currency_symbol question_sheet.ministry.currency_symbol
  json.currency_code question_sheet.ministry.currency_code
  json.compliance question_sheet.ministry.compliance

  json.sections question_sheet.pages do |page|
    json.mpd_section_id page.id
    json.name page.label
    json.view_order page.number
    json.total_mode page.total_mode

    json.questions question_sheet.elements do |element|
      json.mpd_question_id element.id
      json.name element.label
      json.help element.tooltip
      json.view_order element.position
      json.type element.kind
      json.min element.min
      json.max element.max
      json.formula element.content
    end
  end
end
