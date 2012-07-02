class CreateBobs < ActiveRecord::Migration
  def change
    create_table :bobs do |t|
      t.datetime :time
      t.string :temp1
      t.string :temp2
      t.string :humidity
      t.string :ph
      t.string :relay1status
      t.string :relay2status
      t.string :batteryv

      t.timestamps
    end
  end
end
