class Category < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 25, minimum: 3} 
  validates :name, uniqueness: {case_sensitive: false}
end