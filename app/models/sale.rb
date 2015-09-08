class Sale < ActiveRecord::Base
	has_many :payments
	belongs_to :store
	belongs_to :user
end
