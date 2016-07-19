class FormsController < ApplicationController
  #before_action :authenticate_request

  def index

    #TODO token logic is this really optional?
    token = params[:token]

    refresh_forms if params[:refresh] == 'true'
    filter_by_ministry
    filter_inactive unless params[:show_inactive] == 'true'
    filter_global unless params[:include_global] == 'true'

  end

  def show

    #TODO token logic is this really optional?
    token = params[:token]


    @form = Form.find(params[:id])
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
    @forms = Form.all
  end

  #filter returns only active forms
  def filter_inactive
    @forms = @forms.where(archived: false)
  end

  #filter return only non-global forms
  def filter_global
    @forms = @forms.where(is_global: false)
  end

  def refresh_forms
    #TODO refresh parameter
  end


end


