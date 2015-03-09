class Category < ActiveRecord::Base
	has_many :shouts
end
#validates :shouts, presence: true