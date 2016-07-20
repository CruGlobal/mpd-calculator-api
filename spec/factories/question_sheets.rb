#named mpd_question_sheets otherwise it uses Fe::question_sheets

FactoryGirl.define do
  factory :mpd_question_sheet, class: 'Fe::QuestionSheet' do
    sequence(:label) { |n| "Test Question Sheet (#{n})" }
    archived false
    is_global false
  end
end