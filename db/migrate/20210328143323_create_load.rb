class CreateLoad < ActiveRecord::Migration[6.1]
  def change
    create_table :loads do |t|
      t.string :pickup
      t.string :delivery
      t.integer :miles
      t.integer :amount
      t.integer :team_id
      t.integer :dispatcher_id
      t.integer :driver_id
      t.string :notes
    end
  end
end
