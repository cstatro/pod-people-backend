class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :genre
      t.string :publisher
      t.integer :number_of_episodes
      t.string :image_url
      t.timestamps
    end
  end
end
