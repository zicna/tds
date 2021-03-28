class CreateDriver < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :truck
      t.string :trailer
      t.integer :team_id
    end
  end
end
