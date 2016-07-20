class MinistryQuestionSheet < ActiveRecord::Base

  belongs_to :question_sheet
  belongs_to :ministry

end