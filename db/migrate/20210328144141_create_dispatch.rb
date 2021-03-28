class CreateDispatch < ActiveRecord::Migration[6.1]
  def change
    create_table :dispatchers do |t|
      t.string :name
      t.integer :team_id
      t.string :password
    end
  end
end
