class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :solutions 

  def move_to(user)
    todos.update_all(user_id: user.id)
  end

  def completed?(universe)
    story_ids = universe.stories.pluck(:id)
    finished_ids = self.solutions.pluck(:story_id)

    (story_ids - finished_ids).empty?
  end

end
