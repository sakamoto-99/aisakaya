## usersテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association
- belongs_to :sake
- has_many :comments


## sakesテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| title_kana         | string     | null: false                    |
| text               | text       | null: false                    |
| star_id            | integer    | null: false                    |
| user               | references | foreign_key: true              |

### Association
- has_many :users
- has_many :comments


## commentssテーブル

| Column     | Type       | Options                                |
| ---------- | ---------- | -------------------------------------- |
| text       | text       | null: false                            |
| star_id    | integer    | null: false                            |

### Association
- belongs_to :sake
- belongs_to :user

