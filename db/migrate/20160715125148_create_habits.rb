class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title, null: false
      t.text :mativation, null: false
      t.time :deadline, null: false
      t.text :commit, null: false
      t.text :declaration, null: false

      t.timestamps null: false

      t.references 'user', index: true

      t.foreign_key 'user', dependent: :delete
    end
  end
end
