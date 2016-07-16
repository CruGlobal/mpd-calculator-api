class FormsController

  # GET all forms for ministry
  def index
    #TODO filter by ministry
    # Supplying a ministry_id also checks the ministry for
    # subsidy_formula, assessment_formula and a compliance statement.

    question_sheets = {}

    render json: question_sheets
  end

  def show

  end

  def update

  end

  def create

  end

  def destroy

  end

end
