class AddDescriptionColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :description, :string
    add_column :podcasts, :description, :string
  end
end
