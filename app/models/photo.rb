class Photo < ApplicationRecord
	has_one_attached :images
end
