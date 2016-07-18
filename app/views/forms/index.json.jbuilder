json.array! @question_sheets do |qs|
json.mpd_def_id qs.id
  json.name qs.label
  json.description qs.label
  json.is_global qs.is_global
  json.active !qs.archived
  json.assessment_formula qs.assessment_formula
  json.subsidy_formula qs.subsidy_formula
  json.currency_symbol qs.currency_symbol
  json.currency_code qs.currency_code
  json.compliance qs.compliance

  json.sections qs.pages do |page|
    json.mpd_section_id page.id
    json.name page.label
    json.view_order page.number
    json.total_mode page.total_mode

    json.questions qs.elements do |element|
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
