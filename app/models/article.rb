class Article < ActiveRecord::Base
  # Relationship
  belongs_to :category
  has_many :comments
  
  # Validations
  validates_presence_of :title, :content
  
  # Scopes
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
  
end
