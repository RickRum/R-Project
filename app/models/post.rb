class Post < ApplicationRecord
	# validates :title, presence: true, length: {minimum: 5}
   paginates_per 6
   has_many :comments
   # self.per_page = 5
end
