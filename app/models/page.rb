class Page < ApplicationRecord
  belongs_to :story
  acts_as_list scope: :story
  has_attachment :photo

  has_attachment :voice
end
