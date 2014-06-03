class ChangeName < ActiveRecord::Migration
	def change
        rename_table :themostats, :thermostats
    end
end
