# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id,
             :uid,
             :author,
             :title,
             :is_readed,
             :image,
             :page_number

  def image
    url_for(object.image) if object.image.attachment
  end
end
