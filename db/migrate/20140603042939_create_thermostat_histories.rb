class CreateThermostatHistories < ActiveRecord::Migration
  def change
    create_table :thermostat_histories do |t|
      t.references :thermostat, index: true
      t.integer :temperature
      t.integer :humidity
      t.integer :kw
      t.integer :co2

      t.timestamps
    end
  end
end
