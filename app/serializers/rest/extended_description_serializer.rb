# frozen_string_literal: true

class REST::ExtendedDescriptionSerializer < ActiveModel::Serializer
  attributes :updated_at, :content

  def updated_at
    object.updated_at&.iso8601
  end

  def content
    object.text
  end
end
