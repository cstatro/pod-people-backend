class ActivePodcastsAddTable < ActiveRecord::Migration[5.2]
  def change
    create_table :active_podcasts do |t|
      t.integer :podcast_id
      t.integer :user_id
      t.timestamps
    end
  end
end
