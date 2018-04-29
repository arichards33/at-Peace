class Inspiration < ApplicationRecord



validates :image_file, presence: true
validates :blog_title, presence: true
validates :inspo_reason, presence: true


end
