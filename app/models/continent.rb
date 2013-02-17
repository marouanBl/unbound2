class Continent < ActiveRecord::Base
  attr_accessible :name
  has_many :countries, dependent: :destroy 
  has_many :states, dependent: :destroy 

  validates :name, :presence => true, :uniqueness => true
end
