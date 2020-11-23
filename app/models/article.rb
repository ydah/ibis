class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :author, presence: true, length: { maximum: 100 }
  validates :tag, presence: true, length: { maximum: 25 }
  validates :content, presence: true
end
