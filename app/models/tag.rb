class Tag < ApplicationRecord
  validates :name, presence: true
  has_many :post_tags
  has_many :tags, :through => :post_tags
end
