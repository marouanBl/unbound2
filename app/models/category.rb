class Category < ActiveRecord::Base
  attr_accessible :created_at, :description, :name, :parent_category
end
