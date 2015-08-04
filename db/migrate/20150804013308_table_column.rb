class TableColumn < ActiveRecord::Migration
  def change

    add_column :posts, :summary, :text
    add_column :posts, :subreddit_id, :integer
    add_column :subreddits, :name, :string

  end
end
