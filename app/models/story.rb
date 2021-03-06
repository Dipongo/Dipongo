class Story < ApplicationRecord
  belongs_to :universe
  acts_as_list scope: :universe

  has_many :pages, -> { order(position: :asc) }
  has_many :solutions
  has_many :tips

  has_attachment :photo
end
