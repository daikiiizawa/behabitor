class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :type, null: false
      t.time :execution_time, null: false

      t.timestamps null: false

      t.references 'target', index: true

      t.foreign_key 'target', dependent: :delete
    end
  end
end
