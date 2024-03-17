class CreateFinancialCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :financial_categories do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
