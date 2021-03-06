## users テーブル
| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |

### Association
- has_many: prototypes
- has_many: comments

## prototypes テーブル
| Column    | Type          | Options     |
| --------  | ----------    | ----------- |
| title     | string        | null: false |
| catch_copy| text          | null: false |
| concept   | text          | null: false |
| image     | ActiveStorage | null: false |
| user      | reference     | null: false |

### Association
- belong_to: user
- has_many: comments

## comment テーブル
| Column    | Type      | Options     |
| --------  | --------  | ----------- |
| text      | text      | null: false |
| user      | reference | null: false |
| prototype | reference | null: false |

### Association
- belongs_to: prototype
- belongs_to: user