class Comment < ApplicationRecord
  belongs_to :article
  after_create :count_comments
  after_destroy :count_comments

  def count_comments 
    article.update(comments_count: article.comments.count)
  end
end
