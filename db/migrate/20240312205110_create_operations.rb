class CreateOperations < ActiveRecord::Migration[7.1]
  def change
    create_table :operations do |t|
      t.string :type, null: false
      t.string :title, null: false
      t.text :description
      t.monetize :amount
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
