class Offer < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :comment, presence: true
end
