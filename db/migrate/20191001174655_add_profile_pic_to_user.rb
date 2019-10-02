class AddProfilePicToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_pic, :string, default: "https://icon-library.net/images/placeholder-image-icon/placeholder-image-icon-7.jpg"
  end
end
