class Content < ActiveRecord::Base
  validates_presence_of :slug, :body
end