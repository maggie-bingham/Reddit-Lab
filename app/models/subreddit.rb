class Subreddit < ActiveRecord::Base

  has_many :posts
  has_many :comments, :as => :commentable

  before_save :parameterize_name

  def parameterize_name
    self.name = self.name.downcase
  end

  def to_param
    name
  end

end
