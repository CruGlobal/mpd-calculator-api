# frozen_string_literal: true

  class MinistrySerializer < ActiveModel::Serializer
    attribute :gr_id, key: :ministry_id
    attributes :name, :min_code, :area_name, :area_code, :is_admin

    def area_name
      object.area.try(:name)
    end

    def area_code
      object.area.try(:code)
    end

    def is_admin
      object.&admin.find_by(person_id: @person_id)
    end

  end

