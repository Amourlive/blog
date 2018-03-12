class Article < ApplicationRecord #:nodoc:
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments
end