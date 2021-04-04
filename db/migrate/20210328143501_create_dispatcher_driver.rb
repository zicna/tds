class CreateDispatcherDriver < ActiveRecord::Migration[6.1]
  def change
    create_table :join_dispatch_driver do |t|      
      t.integer :dispatcher_id
      t.integer :driver_id
    end
  end
end
