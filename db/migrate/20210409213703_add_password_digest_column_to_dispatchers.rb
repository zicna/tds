class AddPasswordDigestColumnToDispatchers < ActiveRecord::Migration[6.1]
  def change
    add_column :dispatchers, :password_digest, :string
  end
end
