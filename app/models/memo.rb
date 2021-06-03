class Memo < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :title
    validates :title_kana
    validates :text
    validates :image
    # with_options numericality: { only_integer: true, greater_than_or_equal_to: 2 } do
    #   validates :star_id
    # end
  end
end
