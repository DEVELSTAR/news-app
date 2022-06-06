class AddViewsToMagazine < ActiveRecord::Migration[7.0]
  def change
    add_column :magazines, :views, :integer, default: 0
  end
end
