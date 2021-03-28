class AddUsernameColumnToDispatchers < ActiveRecord::Migration[6.1]
  def change
    add_column :dispatchers, :username, :string
  end
end
