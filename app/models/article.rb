class Article < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 140 }
  

end 
