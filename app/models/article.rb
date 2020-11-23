class Article < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :tag, presence: true
  validates :content, presence: true
end
