class Store < ActiveRecord::Base
  has_many :users
  before_save :default_values

  validates_presence_of :name, :address, :phone
  validates :name, length: { minimum: 5 }
  validates :phone, numericality: { only_integer: true }, length: { minimum: 10, maximum: 10 }

# def active_store
#   @stores = Store.where(status: 'Activa')
# end

private
  def default_values
    self.status ||= 'Activa'
  end
end
