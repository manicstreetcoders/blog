class Post < ActiveRecord::Base
  validates :name, :presence => true
  validates :title, :presence => true, :length => { :minimum => 2 }
	
  has_many :comments, :dependent => :destroy

  def self.text_search(query)
    if query.present?
      where("title like :q or content like :q", q: "%#{query}%")
    else
      scoped
    end
  end
end
