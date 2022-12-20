class Article < ApplicationRecord
  has_many :comments

  def previous
    Article.find_by(id: id - 1)
  end

  def next
    Article.find_by(id: id + 1)
  end
end
