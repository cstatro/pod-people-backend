class AddDefaultValueToDescriptions < ActiveRecord::Migration[5.2]
  def change
    change_column :episodes,:description,:string, :default => ""
    change_column :podcasts,:description,:string, :default => ""
  end
end
