class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 4, maximun: 10}
  validates :description, presence: true, length: {minimum: 15, maximun: 100}
  validates :user_id, presence: true
end