class Universe < ApplicationRecord
  has_many :stories, -> { order(position: :asc) }
  has_attachment :photo
end
