class Post < ActiveRecord::Base
  attr_accessible :content, :name, :tag_list

  belongs_to :user
  belongs_to :category

  has_many :taggings
  has_many :tags, through: :taggings
end
