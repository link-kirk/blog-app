class ChangeArticlesCommentCountDefault < ActiveRecord::Migration[6.0]
  def self.up
    Article.update_all(comments_count: 0)

    change_column(:articles, :comments_count, :integer, default: 0)
  end

  def self.down
    change_column(:articles, :comments_count, :integer, default: nil)
  end
end
