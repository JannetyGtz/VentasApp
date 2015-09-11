class User < ActiveRecord::Base
	belongs_to :store
	has_many :sales

	has_secure_password

	validates_presence_of :name, :email, :password
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :cellphone, :numericality => {:only_integer => true},length: { minimum: 10 }
	validates :email, uniqueness: true

end
