class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name, null: false, index: true, unique: true
      t.integer :menu_type_id, null: false, index: true
      t.integer :color_id, null: false
      t.date :date
      t.timestamps
    end
  end
end
