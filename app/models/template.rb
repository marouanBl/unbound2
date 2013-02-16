class Template < ActiveRecord::Base
  attr_accessible :content, :created_at, :name, :updated_at, :users_id
end
