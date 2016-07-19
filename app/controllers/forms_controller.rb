class FormsController < ApplicationController
  def index

    #TODO token logic is this really optional?
    token = params[:token]

    refresh_forms if params[:refresh] == 'true'
    filter_by_ministries
    filter_inactive unless params[:show_inactive] == 'true'
    filter_global unless params[:include_global] == 'true'

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

  private

  def filter_by_ministries
    #TODO filter by ministry id
    ministry_id = params[:ministry_id]
    @forms = Form.all
    Rails.logger.debug 'filter_by_ministries'
  end

  #filter returns only active forms
  def filter_inactive
    @forms = @forms.where(archived: false)
    Rails.logger.debug 'filter_inactive'
  end

  #filter return only non-global forms
  def filter_global
    @forms = @forms.where(is_global: false)
    Rails.logger.debug 'filter_global'
  end

  def refresh_forms
    #TODO refresh parameter
  end


end


