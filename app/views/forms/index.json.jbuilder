json.array! @forms do |form|
json.mpd_def_id form.id
  json.name form.label
  json.description form.label
  json.is_global form.is_global
  json.active !form.archived
  json.assessment_formula form.assessment_formula
  json.subsidy_formula form.subsidy_formula
  json.currency_symbol form.currency_symbol
  json.currency_code form.currency_code
  json.compliance form.compliance

  json.sections form.pages do |page|
    json.mpd_section_id page.id
    json.name page.label
    json.view_order page.number
    json.total_mode page.total_mode

    json.questions form.elements do |element|
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
