class AddPasswordAndUsernameToDriversTable < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :username, :string
    add_column :drivers, :password, :string
  end
end
