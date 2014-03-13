class Post < ActiveRecord::Base
  #attr_accessible :content, :name, :tag_list
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  belongs_to :user
  belongs_to :category

end
