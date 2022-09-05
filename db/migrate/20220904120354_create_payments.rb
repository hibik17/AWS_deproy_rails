class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.references :user_id
      t.references :group_id

      t.timestamps
    end
  end
end
