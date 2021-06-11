class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trail

  def review_author 
    self.user.username 
  end
  

end
