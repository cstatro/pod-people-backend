class CreateEpisodeListJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :episode_list_joins do |t|
      t.integer :episode_id
      t.integer :list_id

      t.timestamps
    end
  end
end
