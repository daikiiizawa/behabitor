# frozen_string_literal: true
class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :type
      t.text :title
      t.string :description
      t.string :text
      t.string :precondition
      t.string :text
      t.references :habit, index: true, foreign_key: true, dependent: :delete

      t.timestamps null: false
    end
  end
end
