# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false, index: true, unique: true
      t.string :description, null: false
      t.timestamps
    end
  end
end
