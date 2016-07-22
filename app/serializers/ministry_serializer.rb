# frozen_string_literal: true

  class MinistrySerializer < ActiveModel::Serializer
    attribute :gr_id, key: :ministry_id
    attributes :name, :min_code, :is_admin

    def is_admin
      object.admins.exists?(person_id: scope.id)
    end

  end

