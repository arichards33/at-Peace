class Art < ApplicationRecord

validates :image_file, presence: true
validates :piece_name, presence: true


end
