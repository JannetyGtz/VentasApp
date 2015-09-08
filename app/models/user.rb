class User < ActiveRecord::Base
	has_secure_password
	belongs_to :store
	has_many :sales

	validates_presence_of :name, :email, :password
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :cellphone, :numericality => {:only_integer => true},length: { minimum: 10 }


end
