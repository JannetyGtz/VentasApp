class User < ActiveRecord::Base
  belongs_to :store
  has_many :sales
  before_save :default_values

  has_secure_password

  validates_presence_of :name, :email, :password
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :cellphone, numericality: { only_integer: true }, length: { minimum: 10 }

  validates :email, uniqueness: true

  def self.based_in_merchant(current)
    current.admin? ? User.order(:store_id ).all : User.where(store_id: current.store.id)
  end

  def admin? 
    self.role == 'Administrador' 
  end

  private
  def default_values
    self.role ||= 'Usuario'
    self.status ||= 'Activo'
  end

end
  