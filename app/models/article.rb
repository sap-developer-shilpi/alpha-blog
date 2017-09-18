class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 4, maximun: 10}
  validates :description, presence: true, length: {minimum: 15, maximun: 100}
end