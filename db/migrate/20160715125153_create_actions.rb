class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :type , null: false
      t.text :title, null: false
      t.text :description, null: false
      t.text :precondition, null: false

      t.timestamps null: false

      t.references 'habit', index: true

      t.foreign_key 'habit', dependent: :delete
    end
  end
end
