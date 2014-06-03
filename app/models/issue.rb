class Issue < ActiveRecord::Base
  belongs_to :thermostat
  validates :description, :presence => true
  before_create :set_default
  
  def set_default
  	self.status = 'ABIERTO'
  end

end
