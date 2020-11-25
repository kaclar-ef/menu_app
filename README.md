# README

# DB設計

## menusテーブル
|column      |type   |options                               |
|name        |string |null: false, index: true, unique: true|
|menu_type_id|integer|null: false, index: true              |
|color_id    |integer|null: false                           |
|date        |date   |                                      |

### アソシエーション
belogns_to :menu_type
belongs_to :color
has_many :cookings
has_many :ingredient_amounts, through: :cookings


## ingredientsテーブル
|column|type   |options    |
|name  |string |null: false|
|cost  |integer|null: false|
|weight|integer|null: false|
|unit  |string |null: false|

### アソシエーション
has_many: ingredient_amounts
has_many: amounts, through: :ingredient_amounts


## amountsテーブル
|column        |type   |options    |
|weight_per_ten|integer|null: false|

### アソシエーション
has_many: ingredient_amounts
has_many: ingredients, through: :ingredient_amounts


## ingredient_amountsテーブル
|column       |type     |options                               |
|name         |string   |null: false, index: true, unique: true|
|ingredient_id|reference|foreign_key: true                     |
|amount_id    |reference|foreign_key: true                     |

### アソシエーション
belongs_to :ingredient
belongs_to :amount
has_many :cookings

## cookingsテーブル
|column              |type     |options          |
|menu_id             |reference|foreign_key: true|
|ingredient_amount_id|reference|foreign_key: true|

### アソシエーション
belongs_to :menu
belongs_to :ingredient_amount