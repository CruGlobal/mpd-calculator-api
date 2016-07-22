class QuestionSheetsController < ApplicationController

  def index
    ministry_id = get_ministry_id(params[:ministry_id])
    init_active_ministry_qs(ministry_id)
    add_inactive_ministry_qs(ministry_id) if params[:show_inactive] == 'true'
    add_active_global_qs if params[:include_global] == 'true'
    add_inactive_global_qs if params[:include_global] == 'true' && params[:show_inactive] == 'true'
  end

  def show
    @question_sheet = Fe::QuestionSheet.find(get_ministry_id(params[:id]))
  end

  def update

  end

  def create

  end

  def destroy

  end


  private

  def get_ministry_id(id)
    Ministry.find_by(gr_id: id ).id
  end

  def init_active_ministry_qs(id)
    @question_sheets = (Fe::QuestionSheet
                            .joins(:ministry_question_sheets)
                            .where(ministry_question_sheets: { ministry_id: id, active: true })).to_a
  end

  def add_inactive_ministry_qs(id)
    @question_sheets = @question_sheets + (Fe::QuestionSheet
                            .joins(:ministry_question_sheets)
                            .where(ministry_question_sheets: { ministry_id: id, active: false })).to_a
  end

  def add_active_global_qs
    @question_sheets = @question_sheets + ( Fe::QuestionSheet
                            .where(is_global: true, archived: false)).to_a
  end

  def add_inactive_global_qs
    @question_sheets = @question_sheets + ( Fe::QuestionSheet
                            .where(is_global: true, archived: true)).to_a
  end

end


