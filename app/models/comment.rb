# Comment for article
class Comment < ApplicationRecord
  belongs_to :article
  validates :body, length: { maximum: 4000, too_long: "%{count} characters is the maximum allowed" }
end
