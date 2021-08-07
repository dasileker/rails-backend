class AddUniqueKeyToCoaches < ActiveRecord::Migration[6.1]
  def change
    add_index :coaches, :user_id, unique: true, name: 'idx_uk_therapists_on_user_id'
  end
end
