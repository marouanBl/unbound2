class Article < ActiveRecord::Base
  attr_accessible :categories_id, :content, :created_at, :is_draft, :published_at, :title, :updated_at, :users_id
end
