class QuestionSheetsController < ApplicationController
  #before_action :authenticate_request

  def index

    refresh_forms if params[:refresh] == 'true'
    filter_by_ministry
    filter_inactive unless params[:show_inactive] == 'true'
    filter_global unless params[:include_global] == 'true'

  end

  def show

    #TODO token logic is this really optional?
    token = params[:token]


    @question_sheet = QuestionSheet.find(params[:id])
  end

  def update

  end

  def create

  end

  def destroy

  end


  private

  def filter_by_ministry
    #TODO filter by ministry id
    ministry_id = params[:ministry_id]
    @question_sheets = QuestionSheet.all
  end

  #filter returns only active question_sheets
  def filter_inactive
    @question_sheets = @question_sheets.where(archived: false)
  end

  #filter return only non-global question_sheets
  def filter_global
    @question_sheets = @question_sheets.where(is_global: false)
  end

  def refresh_forms
    #TODO refresh parameter
  end


end


