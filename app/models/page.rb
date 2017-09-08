class Page < ApplicationRecord
  belongs_to :story
  acts_as_list scope: :story
end
