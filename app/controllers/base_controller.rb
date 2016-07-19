# frozen_string_literal: true

  class BaseController < ApplicationController
    include CruLib::AccessTokenProtectedConcern

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
  end

