class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images # Active Storageで画像を複数添付
end
