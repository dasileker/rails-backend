class Drive < ApplicationRecord
  belongs_to :motor
  belongs_to :user

  validaetes_presense_of :drive_time

end
