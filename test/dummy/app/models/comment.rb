class Comment < ActiveRecord::Base
  attr_accessible :body

  def day_of_week
    self.created_at.strftime('%A')
  end
end
