class AddImagesToCoaches < ActiveRecord::Migration[6.1]
  def change
    add_column :coaches, :img_url, :text
  end
end
