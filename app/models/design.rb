class Design < ApplicationRecord

  validates :image_file, presence: true
  validates :project_title, presence: true


end
