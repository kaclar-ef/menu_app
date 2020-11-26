class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.integer :value, null: false
      t.string :weight, null: false
      t.timestamps
    end
  end
end
