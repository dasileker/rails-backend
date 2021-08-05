class Motor < ApplicationRecord
  has_many :drives, dependent: :destroy
  validtaes_presence_of :name, :motoType, :specification, :motoImage
end
