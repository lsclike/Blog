class Article < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 140 }
  validates :title, uniqueness: true

  scope :search, lambda {|query| where(["title LIKE ?", "%#{query}%"])}


end 
