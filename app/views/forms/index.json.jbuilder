@question_sheets.each do |qs|
json.mpd_def_id qs.id
  json.name qs.label
  json.description "This budget form is designed for use by all staff - unless their country/minstry has created a more specific form"
  json.is_global true
  json.active !qs.archived
  json.assessment_formula "%12"
  json.subsidy_formula "0"
  json.currency_symbol "£"
  json.currency_code "GBP"
  json.compliance "I have passed on all donations to the National Office"

  json.sections
  qs.pages.each do |page|
    json.mpd_section_id page.id
    json.name page.label
    json.view_order page.number
    json.total_mode "both"
  end


  json.questions
    qs.elements.each do |element|
      json.mpd_question_id element.id
      json.name element.label
      json.help element.tooltip
      json.view_order element.position
      json.type "net_month"
      json.min "0"
      json.max "100"
      json.formula element.content
    end


end
