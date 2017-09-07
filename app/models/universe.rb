class Universe < ApplicationRecord
  has_many :stories, -> { order(position: :asc) }
end
