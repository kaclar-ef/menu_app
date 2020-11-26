# README

# DB設計

## menusテーブル
|column      |type   |options                               |
|name        |string |null: false, index: true, unique: true|
|menu_type_id|integer|null: false, index: true              |
|color_id    |integer|null: false                           |
|date        |date   |                                      |

### アソシエーション
belongs_to :menu_type
belongs_to :color
has_many :costs
has_many :ingredients, through: :cookings
has_many :amounts, through: :costs

## ingredientsテーブル
|column|type   |options    |
|name  |string |null: false|
|value |integer|null: false|
|weight|string |null: false|

### アソシエーション
has_many: costs
has_many: amounts, through: :costs
has_many: menus, through: :costs

## amountsテーブル
|column        |type  |options    |
|weight_per_ten|string|null: false|

### アソシエーション
has_many :costs
has_many :ingredients, through: :costs
has_many :menus, through: :costs

## costsテーブル
|column       |type     |options          |
|menu_id      |string   |foreign_key: true|
|ingredient_id|reference|foreign_key: true|
|amount_id    |reference|foreign_key: true|

### アソシエーション
belongs_to :ingredient
belongs_to :amount
belongs_to :menu

