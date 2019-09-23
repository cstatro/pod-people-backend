class AddRssFeedToPodcastModel < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :feed, :string
  end
end
