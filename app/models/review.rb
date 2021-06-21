class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trail

  def review_author 
    self.user.username 
  end

  def avatar
    self.user.profile_picture
  end 

end
