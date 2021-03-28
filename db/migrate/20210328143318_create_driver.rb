class CreateDriver < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :password
      t.integer :team_id
    end
  end
end
