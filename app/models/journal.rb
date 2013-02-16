class Journal < ActiveRecord::Base
  attr_accessible :categories_id, :created_at, :description, :name, :updated_at, :users_id
end
