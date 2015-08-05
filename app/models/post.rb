class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit
  acts_as_votable
  has_many :comments, :as => :commentable 
  before_save :unique_url

  def unique_url
    post = Post.where(:url => self.url)
      if post
        post.upvote
        self.errors_add(:message, 'url has already been posted')
        false
      else
        true
      end
  end


end
