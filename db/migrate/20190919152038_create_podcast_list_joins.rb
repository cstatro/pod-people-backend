class CreatePodcastListJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :podcast_list_joins do |t|
      t.integer :list_id
      t.integer :podcast_id

      t.timestamps
    end
  end
end
