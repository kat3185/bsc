class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.integer :general, null: false
      t.integer :student
      t.integer :discounted

      t.timestamps
    end
  end
end
