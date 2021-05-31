## usersテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association
- has_many :memos


## memosテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| title_kana         | string     | null: false                    |
| text               | text       | null: false                    |
| star_id            | integer    | null: false                    |
| user               | references | foreign_key: true              |

### Association
- belongs_to :user
