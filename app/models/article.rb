class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 45}
  validates :description, presence: true, length: {minimum: 10, maximum: 250 }
  validates :user_id, presence: true
end
