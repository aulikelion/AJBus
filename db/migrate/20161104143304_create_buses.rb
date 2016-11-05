class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :num
      t.integer :type
      t.integer :code

      t.timestamps null: false
    end
  end
end
