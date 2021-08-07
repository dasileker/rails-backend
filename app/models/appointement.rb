class Appointement < ApplicationRecord
  belongs_to :user
  belongs_to :coach, primary_key: :user_id
  validates_presence_of :start_at
end
