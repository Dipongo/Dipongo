class Solution < ApplicationRecord
  belongs_to :story
  belongs_to :user

  has_attachment :photo
end
