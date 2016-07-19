# frozen_string_literal: true

  class MinistriesController < BaseController

    def index
      refresh_ministries if bool_value(params[:refresh])
      filter_ministries
      render_ministries
    end

    private

    def filter_ministries
      @ministries = Ministry.all.includes(:area) # Prefetch areas
      filter_inactive unless bool_value(params[:show_inactive])
      filter_profile_only if bool_value(params[:global_profile_only])
      @ministries = @ministries.order(name: :asc)
    end

    def filter_inactive
      @ministries = @ministries.where(active: true)
    end

    def filter_profile_only
      @ministries = @ministries.where.not(gp_key: nil)
    end

    def render_ministries
      render json: @ministries, status: :ok, each_serializer: MinistrySerializer
    end

    def refresh_ministries
      Ministry.refresh_from_gr
    end
  end

