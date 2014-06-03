class Thermostat < ActiveRecord::Base

	has_many :thermostat_histories

	def kw_day
		thermostat_histories.where('created_at >= ? and created_at <= ?' , Time.now.beginning_of_day, Time.now.end_of_day).sum(:kw)
	end	
end
