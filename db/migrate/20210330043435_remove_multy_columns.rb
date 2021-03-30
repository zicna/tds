class RemoveMultyColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :loads, :team_id, :integer
    remove_column :drivers, :password, :string
    remove_column :drivers, :username, :string
  end
end
