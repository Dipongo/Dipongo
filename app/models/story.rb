class Story < ApplicationRecord
  belongs_to :universe
  has_many :pages, -> { order(position: :asc) }
  has_many :solutions
end
