class CreateDescoverlies < ActiveRecord::Migration
  def change
    create_table :descoverlies do |t|
      t.time :descovery_time, null: false
      t.integer :type, null: false
      t.string :description, null: false

      t.timestamps null: false

      t.references 'action', index: true

      t.foreign_key 'action', dependent: :delete
    end
  end
end
