class CreateAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :amounts do |t|
      t.string :weight_per_ten, null: false
      t.timestamps
    end
  end
end
