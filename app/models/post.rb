class Post < ApplicationRecord
	# validates :title, presence: true, length: {minimum: 5}
   paginates_per 6
end
