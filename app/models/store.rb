class Store < ActiveRecord::Base
	has_many :users

	validates_presence_of :name, :address, :phone
	validates :name, uniqueness: true
	validates :phone, :numericality => {:only_integer => true},length: { minimum: 10, maximum: 10 }
end
