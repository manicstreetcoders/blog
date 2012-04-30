module PostsHelper
  
  def ago( created_at )
    i = (Date.today - created_at.to_date).to_i
    "#{i}d ago"
  end
end
