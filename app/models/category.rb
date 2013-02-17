class Category < ActiveRecord::Base
  attr_accessible :created_at, :description, :name, :parent_category
  has_many :journals, dependent: :destroy 
  has_many :articles, dependent: :destroy 

  validates :name, :presence => true, :uniqueness => true
end
