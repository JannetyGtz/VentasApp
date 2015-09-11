class User < ActiveRecord::Base
	belongs_to :store
	has_many :sales

	has_secure_password

	validates_presence_of :name, :email, :password
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :cellphone, :numericality => {:only_integer => true},length: { minimum: 10 }
<<<<<<< HEAD
	validates :email, uniqueness: true
=======
  
  	before_save :default_values

  private
    def default_values
      self.role ||= "Usuario"
    end
>>>>>>> 13b1b7180d5c436242d0a07647514b867684a31c

end
