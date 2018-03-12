class Article < ApplicationRecord #:nodoc:
  validates :title, presence: true
  validates :text, presence: true
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed" }
  validates :text, length: { maximum: 4000, too_long: "%{count} characters is the maximum allowed" }
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end