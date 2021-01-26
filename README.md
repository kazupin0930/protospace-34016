# テーブル設計


## users テーブル

| Column     | Type   | Options  |
| --------   | ------ | -------- |
| email      | string | NOT NULL |
| password   | string | NOT NULL |
| name       | string | NOT NULL |
| profile    | text   | NOT NULL |
| occupation | text   | NOT NULL |
| position   | text   | NOT NULL |

### Association

- has_many :prototype_users
- has_many :prototypes, through: prototype_users
- has_many :comments


## prototypes テーブル

| Column     | Type       | Options  |
| ------     | ------     | -------- |
| title      | string     | NOT NULL |
| catch_copy | text       | NOT NULL |
| concept    | text       | NOT NULL |
| image      | ---------- | -------- |
| user       | references | -------- |

### Association

- has_many :prototype_users
- has_many :users, through: prototype_users
- has_many :comments


## comments テーブル

| Column    | Type       | Options  |
| ------    | ---------- | -------- |
| text      | text       | NOT NULL |
| user      | references | -------- |
| prototype | references | -------- |

### Association

- belongs_to :prototype
- belongs_to :user