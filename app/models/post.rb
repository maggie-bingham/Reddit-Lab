class Post < ActiveRecord::Base

  belongs_to :user
  acts_as_votable

  paginates_per 50
  
end
