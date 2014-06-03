class ThermostatHistory < ActiveRecord::Base
  belongs_to :thermostat

  validates :temperature, :humidity, :kw, :co2,  presence: true

  validates :temperature, :numericality => { :greater_than_or_equal_to => -20, :less_than_or_equal_to => 60 }
  validates :humidity, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
  validates :kw, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 1000 }
  validates :co2, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 200 }



end
