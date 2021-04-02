class AddColumnnTeamIdToLoads < ActiveRecord::Migration[6.1]
  def change
    add_column :loads, :team_id, :integer
  end
end
