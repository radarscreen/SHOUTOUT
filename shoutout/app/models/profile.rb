class Profile < ActiveRecord::Base
	has_many :shouts, dependent: :destroy
	validates :username, :email, uniqueness: true
	validates :password, length: {minimum: 6}
end
