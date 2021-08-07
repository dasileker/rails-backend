class User < ApplicationRecord
  validates_presence_of :username, :email
  validates :username, uniqueness: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :appointements
  has_one :coaches, dependent: :destroy

  has_secure_password
end
