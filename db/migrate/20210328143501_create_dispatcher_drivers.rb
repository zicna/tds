class CreateDispatcherDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :join_dispatch_drivers do |t|      
      t.integer :dispatcher_id
      t.integer :driver_id
    end
  end
end
