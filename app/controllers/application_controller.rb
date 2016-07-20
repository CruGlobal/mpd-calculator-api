# frozen_string_literal: true
class ApplicationController < ActionController::API

  include CruLib::AccessTokenProtectedConcern

  before_action :set_default_response_format

  protected

  def current_user
    @access_token
  end

  def render_error(message, options = {})
    render(
        json: ApiError.new(message: message),
        status: options[:status] || :bad_request,
        serializer: ApiErrorSerializer
    )
  end

  def render_not_found
    render_error 'Not Found', status: :not_found
  end

  def bool_value(value)
    ActiveRecord::Type::Boolean.new.cast(value)
  end

  private
   def set_default_response_format
      request.format = :json
   end
end
