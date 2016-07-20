Fe::QuestionSheet.class_eval do

  has_many :ministry_question_sheets
  has_many :ministries, through: :ministry_question_sheets


  validates_length_of :label, maximum: 200

  def ministry
    ministries.first || Ministry.new
  end



end