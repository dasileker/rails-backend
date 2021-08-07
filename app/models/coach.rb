class Coach < ApplicationRecord
  belongs_to :user
  has_many :appointements, foreign_key: :user_id
  validates :user_id, presence: true
end
