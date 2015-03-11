class Shout < ActiveRecord::Base
	belongs_to :profile
	belongs_to :category
	# validates :title, :time, :location, :description, :profile_id, :category_id,presence: true
	# validates :description, length: {minimum: 10}
end

 