class Fashion < ApplicationRecord

  validates :image_file, presence: true
  validates :fashion_field, presence: true

end
