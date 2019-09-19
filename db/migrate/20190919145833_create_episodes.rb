class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :podcast_id
      t.integer :episode_number
      t.string :title
      t.string :image_url
      t.string :audio_link
      t.string :run_time

      t.timestamps
    end
  end
end
