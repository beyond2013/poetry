class Poet < ApplicationRecord
	has_many :couplets
	mount_uploader :image, ImageUploader
end
