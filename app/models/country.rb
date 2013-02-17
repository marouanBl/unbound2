class Country < ActiveRecord::Base
  attr_accessible :continents_id, :name
   belongs_to :continent 
  has_many :states, dependent: :destroy 

  # Composite primary key 
  validates :id, :uniqueness => { :scope => [ :continent_id ] } 
  validates :name, :presence => true, :uniqueness => true
end
