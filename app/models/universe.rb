class Universe < ApplicationRecord
  has_many :stories, -> { order(position: :asc) }
  has_attachments :photo
end
