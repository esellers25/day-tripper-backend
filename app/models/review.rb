class Review < ApplicationRecord
  belongs_to :user_id
  belongs_to :trail_id
end
