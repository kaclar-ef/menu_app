class CreateCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :costs do |t|
      t.references :menu, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.references :amount, foreign_key: true
      t.timestamps
    end
  end
end
