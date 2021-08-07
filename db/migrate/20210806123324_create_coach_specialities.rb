class CreateCoachSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :coach_specialities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
