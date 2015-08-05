class PostTable < ActiveRecord::Migration
  def change

    add_column :posts, :summary, :integer, :default => 0
  end
end
