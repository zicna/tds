class AddEmailColumnToDispatchers < ActiveRecord::Migration[6.1]
  def change
    add_column :dispatchers, :email, :string
  end
end
