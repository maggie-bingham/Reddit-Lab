class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit 
  acts_as_votable


end
