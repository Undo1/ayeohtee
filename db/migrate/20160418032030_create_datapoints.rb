class CreateDatapoints < ActiveRecord::Migration[5.0]
  def change
    create_table :datapoints do |t|
      t.integer :device_id
      t.string :metric
      t.integer :value

      t.timestamps
    end
  end
end
