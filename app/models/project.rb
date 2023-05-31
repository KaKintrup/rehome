class Project < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :room, presence: true
  validates :address, presence: true
  # validates :budget, presence: true
  validates :time_frame, presence: true
  validates :description, presence: true
  validates :img_url, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
