class Post < ApplicationRecord
  belongs_to :creator, class_name: 'Author', foreign_key: 'author_id'
  has_many :post_emojis
  has_many :emojis, through: :post_emojis
end
