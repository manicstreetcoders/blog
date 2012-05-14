class Comment < ActiveRecord::Base
  validates :commenter, :presence => true
  validates :body, :presence => true, :length => { :minimum => 2 }

  belongs_to :post
end
