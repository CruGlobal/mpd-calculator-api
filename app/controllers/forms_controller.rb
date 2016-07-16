class FormsController < ApplicationController
  def index
    #TODO filter by ministry id
    @question_sheets = Fe::QuestionSheet.all
    #render json: question_sheets
  end

  def show
    #TODO must accept ministry id
    question_sheet = Fe::QuestionSheet.find(params[:id])
    render json: question_sheet
  end

  def update

  end

  def create

  end

  def destroy

  end

  end
