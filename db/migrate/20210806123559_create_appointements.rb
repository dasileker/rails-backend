class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
