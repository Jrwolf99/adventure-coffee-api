class Cup < ApplicationRecord
  
  belongs_to :user
  belongs_to :bean

  has_one :rating, dependent: :destroy


end
