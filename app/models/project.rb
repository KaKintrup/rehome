class Project < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :room, presence: true
  validates :location, presence: true
  # validates :budget, presence: true
  validates :time_frame, presence: true
  validates :description, presence: true
  validates :img_url, presence: true

end
