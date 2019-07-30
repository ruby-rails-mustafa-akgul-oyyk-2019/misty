class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  scope :published, -> { where(published: true) }
end
