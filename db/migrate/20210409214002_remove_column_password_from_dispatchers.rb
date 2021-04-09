class RemoveColumnPasswordFromDispatchers < ActiveRecord::Migration[6.1]
  def change
    remove_column :dispatchers, :password
  end
end
