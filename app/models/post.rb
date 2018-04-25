class Post < ApplicationRecord
  validates :title, :body, presence: true
  belongs_to :category
  belongs_to :author
  has_many :post_tags
  has_many :tags, :through => :post_tags
end
