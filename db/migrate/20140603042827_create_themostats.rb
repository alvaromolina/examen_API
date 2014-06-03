class CreateThemostats < ActiveRecord::Migration
  def change
    create_table :themostats do |t|
      t.string :serial

      t.timestamps
    end
  end
end
